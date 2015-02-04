require('spec_helper')

describe(Animal) do
  it { should have_and_belong_to_many(:customers) }

  it ("validates the presense of an animal name") do
  animal = Animal.new({:animal_name => ""})
  expect(animal.save()).to eq(false)
  end
end
