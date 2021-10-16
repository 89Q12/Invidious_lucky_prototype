class Annotations < BaseModel
  # this class reflects annaotations.sql
  table do
    annotations : String? # Since we dont have the xml type directly aviable in avram as far as I can tell
  end
end
