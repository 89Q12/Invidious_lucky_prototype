class ChannelVideos < BaseModel
  # this class reflects channel_videos.sql
  table do
    column title : String
    column published : Time
    column ucid : String
    column author : String
    column lenght_seconds : Int32
    column live_now : Bool
    column premiere_timestamp : Time
    column views : Int64
  end
end
