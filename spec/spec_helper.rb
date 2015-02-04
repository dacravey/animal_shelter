ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default, :test)

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each { |file| require file }

RSpec.configure do |config|
 config.after(:each) do
   Animal.all().each() do |animal|
     animal.destroy()
   end
   Customer.all().each() do |customer|
     customer.destroy()
   end
 end
end
