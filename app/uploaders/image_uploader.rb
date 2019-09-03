class ImageUploader < Shrine
  ALLOWED_TYPES = %w[image/jpeg image/png].freeze

  Attacher.validate do
    validate_mime_type ALLOWED_TYPES
  end
end
