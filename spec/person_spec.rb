require './lib/person'
RSpec.describe Person do

  it "exists" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person).to be_instance_of(Person)
  end

  it "has name" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.name).to eq('Hector')
  end

  it "has interests" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.interests).to eq(["sewing", "millinery", "drawing"])
  end

  it "has supplies" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.supplies).to be_instance_of(Hash)
  end

    it "can add supplies" do
      person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
      person.add_supply('fabric', 4)
      person.add_supply('scissors', 1)
      expect(person.supplies).to eq({"fabric"=>4, "scissors"=>1})
    end
end
