require './lib/person'
require './lib/craft'
require './lib/event'


RSpec.describe Person do
  it "exists" do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    expect(person).to be_instance_of(Person)
  end

  it "has attributes" do
      person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
      expect(person.name).to eq("Hector")
      expect(person.interests).to eq(["sewing", "millinery", "drawing"])
  end
end
