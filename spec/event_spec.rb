require './lib/person'
require './lib/craft'
require './lib/event'

describe 'Event' do
  it 'exists' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])

    expect(event).to be_an_instance_of(Event)
  end

  it 'has attributes' do
    person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    event = Event.new("Carla's Craft Connection", [craft], [person])
    crafts = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    expect(event.name).to eq("Carla's Craft Connection")
    expect(event.crafts).to eq(['knitting', {yarn: 20, scissors: 1, knitting_needles: 2}])
    expect(event.attendees).to eq({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
  end

  it 'gives attendee names' do
    sewing = Craft.new('sewing', {fabric: 5, scissors: 1, thread: 1, sewing_needles: 1})
    knitting = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})
    hector = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    toni = Person.new({name: 'Toni', interests: ['sewing', 'knitting']})
    event = Event.new("Carla's Craft Connection", [sewing, knitting], [hector, toni])

    expect(event.attendee_names).to eq(["Hector", "Toni"])
  end
end
