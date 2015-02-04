require('spec_helper')

describe(Animal) do
  it { should have_and_belong_to_many(:customers) }

  it ("validates the presence of an animal name") do
    animal = Animal.new({:animal_name => ""})
    expect(animal.save()).to eq(false)
  end

  it("validates the presence of gender") do
    animal = Animal.new({:animal_name => "Fluffball", :gender => "", :animal_type => "cat", :breed => "Maine Coone"})
    expect(animal.save()).to eq(false)
  end

  it("validates the presence of animal type") do
    animal = Animal.new({:animal_name => "Fluffball", :gender => "female", :animal_type => "", :breed => "Maine Coone"})
    expect(animal.save()).to eq(false)
  end

  it("validates the presence of breed") do
    animal = Animal.new({:animal_name => "Fluffball", :gender => "female", :animal_type => "wombat", :breed => ""})
    expect(animal.save()).to eq(false)
  end

  it("validates the presence of admission date") do
    animal = Animal.new({:date_of_admit => ""})
    expect(animal.save()).to eq(false)
  end
end
