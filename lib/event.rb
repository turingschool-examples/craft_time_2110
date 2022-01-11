class Event
  attr_reader :name, :crafts, :attendees

  def initialize(name, craft, person)
    @name = name
    @crafts = craft
    @attendees = person
  end

  def attendee_names
    attendees.map { |person| person.name }
  end
end
