abstract class BaseModel < Avram::Model
  def self.database : Avram::Database.class
    AppDatabase
  end

  # Default columns that every table has, makes it easier
  macro default_columns
    primary_key id : UUID
    timestamps # this macro includes created_at and updated_at
  end
end
