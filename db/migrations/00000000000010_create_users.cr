class CreateUsers::V00000000000010 < Avram::Migrator::Migration::V1
  def migrate
    create table_for(User) do
      primary_key id : UUID
      add_timestamps
      add userid : String, unique: true, case_sensitive: false
      add encrypted_password : String
      add notifications : Array(String)
      add subscriptions : Array(String)
      add preferences : String
      add token : String
      add watched : Array(String)
      add feed_needs_update : Bool
      add column admin : Bool = false
    end
  end

  def rollback
    drop table_for(User)
  end
end
