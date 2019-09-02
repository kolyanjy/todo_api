require "shrine"

# By default use S3 for production and local file for other environments
if [:s3, :s3_multipart].include?(Rails.configuration.upload_server)
  require "shrine/storage/s3"

  s3_options = {
    access_key_id:     Rails.application.credentials[:aws][:access_key_id],
    secret_access_key: Rails.application.credentials[:aws][:secret_access_key],
    region:            Rails.application.credentials[:aws][:region],
    bucket:            Rails.application.credentials[:aws][:bucket],
  }

  # both `cache` and `store` storages are needed
  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: "cache", **s3_options),
    store: Shrine::Storage::S3.new(**s3_options),
  }
else # :app
  require "shrine/storage/file_system"

  # both `cache` and `store` storages are needed
  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new("public", prefix: "uploads/cache"),
    store: Shrine::Storage::FileSystem.new("public", prefix: "uploads"),
  }
end

Shrine.plugin :activerecord
Shrine.plugin :instrumentation
Shrine.plugin :determine_mime_type, analyzer: :marcel
Shrine.plugin :cached_attachment_data
Shrine.plugin :restore_cached_data

if Rails.configuration.upload_server == :s3
  Shrine.plugin :presign_endpoint, presign_options: -> (request) {
    # Uppy will send the "filename" and "type" query parameters
    filename = request.params["filename"]
    type     = request.params["type"]

    {
      content_disposition:    ContentDisposition.inline(filename), # set download filename
      content_type:           type,                                # set content type
      content_length_range:   0..(10*1024*1024),                   # limit upload size to 10 MB
    }
  }
elsif Rails.configuration.upload_server == :s3_multipart
  Shrine.plugin :uppy_s3_multipart
else # :app
  Shrine.plugin :upload_endpoint
end

Shrine.plugin :derivation_endpoint,
  secret_key: "secret",
  download_errors: [defined?(Shrine::Storage::S3) ? Aws::S3::Errors::NotFound : Errno::ENOENT]

# delay promoting and deleting files to a background job (`backgrounding` plugin)
Shrine.plugin :backgrounding
Shrine::Attacher.promote { |data| PromoteJob.perform_async(data) }
Shrine::Attacher.delete { |data| DeleteJob.perform_async(data) }
