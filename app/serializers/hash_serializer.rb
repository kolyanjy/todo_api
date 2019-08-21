class HashSerializer
  include FastJsonapi::ObjectSerializer
  set_type :hash
  # attributes :csrf, :access, :access_expires_at
end
