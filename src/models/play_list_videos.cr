class PlayListVideos < BaseModel
  table do
    title : String
    author : String
    ucid : String
    length_seconds : Int32
    published : Time
    belongs_to plid : PlayLists
    index : Int32
    live_now : Bool
  end
end
