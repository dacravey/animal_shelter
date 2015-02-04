require('spec_helper')

describe(Customer) do
  it { should have_and_belong_to_many(:animals) }

  it("validates the presence of a customer name") do
  customer = Customer.new({:customer_name => ""})
  expect(customer.save()).to eq(false)  
  end

end
