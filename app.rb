require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @animals = Animal.all()
  @customers = Customer.all()
  erb(:index)
end
