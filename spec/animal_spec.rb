require('spec_helper')

describe(Animal) do
  it { should have_and_belong_to_many(:customers) }
end
