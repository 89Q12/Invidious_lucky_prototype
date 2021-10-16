class Channels < BaseModel
  table do
    author : String
    deleted : Bool = false
    subscribed : Time
  end
end
