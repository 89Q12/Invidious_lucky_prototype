class CreateChannelVideos::V20211016103753 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(ChannelVideos) do
      primary_key id : Int64
      add title : String
      add published : Time
      add ucid : String, index: true
      add author : String
      add lenght_seconds : Int32
      add live_now : Bool
      add premiere_timestamp : Time
      add views : Int64
      add_timestamps
    end
  end

  def rollback
    drop table_for(ChannelVideos)
  end
end
