class User < BaseModel
  include Authentic::PasswordAuthenticatable
  # this class reflects users.sql
  table do
    column userid : String
    column encrypted_password : String
    column notifications : Array(String)
    column subscriptions : Array(String)
    column preferences : String
    column token : String
    column watched : Array(String)
    column feed_needs_update : Bool
    column admin : Bool = false
  end
end
