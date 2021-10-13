class Application
  Habitat.create do
    setting name : String
    setting support_email : Carbon::Address
  end
end

Application.configure do |settings|
  settings.name = "Invidious Lucky Prototype"
  settings.support_email = Carbon::Address.new(settings.name, "no-reply@invidious_lucky_prototype.com")
end
