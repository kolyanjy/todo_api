class UserSerializer < ApplicationSerializer
  set_type :users

  attributes :email, :created_at, :updated_at
end
