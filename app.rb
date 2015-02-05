require("bundler/setup")
Bundler.require(:default)
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @animals = Animal.all()
  @customers = Customer.all()
  erb(:index)
end

post('/add_animal') do
  animal_name = params.fetch("animal_name")
  gender = params.fetch("gender")
  date_of_admit = params.fetch("date_of_admit")
  animal_type = params.fetch("animal_type")
  breed = params.fetch("breed")
  @animal_name = Animal.new({animal_name: animal_name, gender: gender, date_of_admit: date_of_admit, animal_type: animal_type, breed: breed})
  if @animal_name.save()
    redirect('/')
  else
    erb(:errors)
  end
end

get('/animal/:id') do
  @animal = Animal.find(params.fetch("id"))
  erb(:animal)
end

patch('/animal/:id') do
  animal_name = params.fetch("animal_name")
  gender = params.fetch("gender")
  date_of_admit = params.fetch("date_of_admit")
  animal_type = params.fetch("animal_type")
  breed = params.fetch("breed")
  @animal = Animal.find(params.fetch("id").to_i)
  @animal.update({animal_name: animal_name, gender: gender, date_of_admit: date_of_admit, animal_type: animal_type, breed: breed})
  erb(:animal)
end

delete('/animal/:id') do
    animal = Animal.find(params.fetch("id").to_i)
    animal.delete
    redirect('/')
end

post('/add_customer') do
  customer_name = params.fetch("customer_name")
  type_preference = params.fetch("type_preference")
  breed_preference = params.fetch("breed_preference")
  @customer_name = Customer.new(customer_name: customer_name, type_preference: type_preference, breed_preference: breed_preference)
  if @customer_name.save()
    redirect('/')
  else
    erb(:errors)
  end
end

get('/customer/:id') do
  @customer = Customer.find(params.fetch("id"))
  erb :customer
end

patch('/customer/:id') do
  customer_name = params.fetch("customer_name")
  type_preference = params.fetch("type_preference")
  breed_preference = params.fetch("breed_preference")
  @customer = Customer.find(params.fetch("id").to_i)
  @customer.update({customer_name: customer_name, type_preference: type_preference, breed_preference: breed_preference})
  erb(:customer)
end

delete('/customer/:id') do
  customer = Customer.find(params.fetch("id").to_i)
  customer.delete
  redirect('/')
end
