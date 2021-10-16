class CreateChannels::V20211016105853 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Channels) do
      primary_key id : UUID
      add author : String
      add deleted : Bool = false
      add subscribed : Time
      add_timestamps
    end
  end

  def rollback
    drop table_for(Channels)
  end
end
