class CreatePlayLists::V20211016112549 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(PlayLists) do
      primary_key id : UUID
      add title : String
      add author : String
      add description : String
      add video_count : Int32
      add privacy : Int32
      add index : Int32
      add_timestamps
    end
  end

  def rollback
    drop table_for(PlayLists)
  end
end
