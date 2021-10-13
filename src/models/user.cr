class User < BaseModel
  include Authentic::PasswordAuthenticatable

  table do
    column userid : String
    column encrypted_password : String
    notifications : String[]
    subscriptions : String[]
    preferences : String
    token : String
    watched : String[]
    feed_needs_update : Bool
    column admin : Bool = false
  end
end
