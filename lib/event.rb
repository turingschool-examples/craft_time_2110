class Event
  attr_reader :name, :crafts, :attendees
  def initialize(name, craft, person)
    @name = name
    @crafts = craft
    @attendees = person
  end


  def attendee_names
    names = []
      @attendees.each do |person|
        names << person.name
      end
    return names
  end
end
