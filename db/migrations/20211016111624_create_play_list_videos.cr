class CreatePlayListVideos::V20211016111624 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(PlayListVideos) do
      primary_key id : UUID
      add title : String
      add author : String
      add ucid : String
      add length_seconds : Int32
      add published : Time
      add_belongs_to pl : PlayLists, on_delete: :cascade
      add index : Int32
      add live_now : Bool
      add_timestamps
    end
  end

  def rollback
    drop table_for(PlayListVideos)
  end
end
