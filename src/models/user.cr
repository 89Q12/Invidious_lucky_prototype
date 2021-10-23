class User < BaseModel
  include Authentic::PasswordAuthenticatable
  # this class reflects users.sql
  table do
    column userid : String
    column encrypted_password : String
    column notifications : Array(String) = Array(String).new
    column subscriptions : Array(String) = Array(String).new
    column preferences : String?
    column token : String
    column watched : Array(String) = Array(String).new
    column feed_needs_update : Bool = false
    column admin : Bool = false
  end
end
