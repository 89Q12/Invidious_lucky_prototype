class PlayLists < BaseModel
  enum Privacy
    Public
    Unlisted
    Private
  end
  table do
    title : String
    author : String
    description : String
    video_count : Int32
    privacy : PlayLists::Privacy
    index : Int32
  end
end
