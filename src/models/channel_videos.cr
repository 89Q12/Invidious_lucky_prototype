class ChannelVideos < BaseModel
  # this class reflects channel_videos.sql
  table do
    title : String
    published : Time
    ucid : String
    author : String
    lenght_seconds : Int32
    live_now : Bool
    premiere_timestamp : Time
    views : Int64
  end
end
