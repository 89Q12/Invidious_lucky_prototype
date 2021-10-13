class User < BaseModel
  include Authentic::PasswordAuthenticatable

  table do
    column userid : String
    column encrypted_password : String
    notifications : Array(String)
    subscriptions : Array(String)
    preferences : String
    token : String
    watched : Array(String)
    feed_needs_update : Bool
    column admin : Bool = false
  end
end
