require 'rspec'
require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe Person do
  it 'exists' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person).to be_instance_of(Person)
  end

  it 'has a name' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.name).to eq("Hector")
  end


  it 'has an array of interests' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.interests).to eq(["sewing", "millinery", "drawing"])
  end

  it 'initially has an empty hash of supplies' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})

    expect(person.supplies).to eq({})
  end 
end
