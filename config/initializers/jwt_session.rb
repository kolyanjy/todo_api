JWTSessions.algorithm = "HS256"
JWTSessions.encryption_key = Rails.application.credentials.secret_key_base
JWTSessions.token_store = :redis, { redis_url: ENV["REDISTOGO_URL"] } if Rails.env.production?
