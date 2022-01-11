require './lib/person'
require './lib/craft'
require './lib/event'
require 'pry'

RSpec.describe Event do
  before(:each) do
    @hector = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
    @toni = Person.new({name: 'Toni', interests: ['sewing', 'knitting']})

    @sewing = Craft.new('sewing', {fabric: 5, scissors: 1, thread: 1, sewing_needles: 1})
    @knitting = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    @event = Event.new("Carla's Craft Connection", [@sewing, @knitting], [@hector, @toni])
  end

  it 'is an instance of Event' do
    expect(@event).to be_instance_of(Event)
  end

  it 'can access Even name' do
    expect(@event.name).to eq("Carla's Craft Connection")
  end

  it 'can list crafts in a given event' do
    expect(@event.crafts).to eq([@sewing, @knitting])
  end

  it 'can list attendees of a given event' do
    expect(@event.attendees).to eq([@hector, @toni])
  end

  it 'can return a list of attendee names as an array' do
    expect(@event.attendee_names).to eq([@hector.name, @toni.name])
  end

  it 'shows which craft at the event has the most supplies' do

    expect(@event.craft_with_most_supplies).to eq("sewing")
  end
end
