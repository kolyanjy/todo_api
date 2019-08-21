class UserSerializer
  include FastJsonapi::ObjectSerializer
  set_type :users
  attributes :email, :created_at, :updated_at, :password
end
