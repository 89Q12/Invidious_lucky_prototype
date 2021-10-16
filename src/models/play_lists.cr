class PlayLists < BaseModel
  enum Privacy
    Public
    Unlisted
    Private
  end
  table do
    column title : String
    column author : String
    column description : String
    column video_count : Int32
    column privacy : PlayLists::Privacy
    column index : Int32
  end
end
