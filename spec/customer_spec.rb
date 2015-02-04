require('spec_helper')

describe(Customer) do
  it { should have_and_belong_to_many(:animals) }

  it("validates the presence of a customer name") do
  customer = Customer.new({:customer_name => ""})
  expect(customer.save()).to eq(false)
  end

  it("validates the presence of a customer's animal type preference") do
    customer = Customer.new({:type_preference => ""})
    expect(customer.save()).to eq(false)
  end

  it("validates the presence of a customer's animal breed preference") do
    customer = Customer.new({:breed_preference => ""})
    expect(customer.save()).to eq(false)
  end

  it("ensures customer's name is capitalized") do
    customer = Customer.create({:customer_name => "jimmy"})
    expect(customer.customer_name()).to eq("Jimmy")
  end

end
