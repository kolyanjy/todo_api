if Rails.configuration.upload_server == :s3
  require 'shrine/storage/s3'

  s3_options = {
    access_key_id: Rails.application.credentials[:aws][:access_key_id],
    secret_access_key: Rails.application.credentials[:aws][:secret_access_key],
    region: Rails.application.credentials[:aws][:region],
    bucket: Rails.application.credentials[:aws][:bucket]
  }

  Shrine.storages = {
    cache: Shrine::Storage::S3.new(prefix: 'cache', **s3_options),
    store: Shrine::Storage::S3.new(**s3_options)
  }
else
  require 'shrine/storage/file_system'

  Shrine.plugin :upload_endpoint

  Shrine.storages = {
    cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
    store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads')
  }
end

Shrine.plugin :activerecord
Shrine.plugin :parsed_json
Shrine.plugin :determine_mime_type, analyzer: :marcel
Shrine.plugin :validation_helpers

Shrine.plugin :presign_endpoint, presign_options: lambda { |request|
  filename = request.params['filename']
  type = request.params['type']

  {
    content_disposition: ContentDisposition.inline(filename),
    content_type: type,
    content_length_range: 0..10.megabytes
  }
}
