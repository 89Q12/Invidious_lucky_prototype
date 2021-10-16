class Channels < BaseModel
  table do
    column author : String
    column deleted : Bool = false
    column subscribed : Time
  end
end
