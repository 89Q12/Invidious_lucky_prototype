class CreateAnnotations::V20211016103839 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Annotations) do
      primary_key id : UUID
      add annotations : String?
      add_timestamps
    end
  end

  def rollback
    drop table_for(Annotations)
  end
end
