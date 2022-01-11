class Event

  attr_reader :name, :crafts, :attendees

  def initialize(event_name, crafts_array, persons_array)
    @name = event_name
    @crafts = crafts_array
    @attendees = persons_array
  end

  def attendee_names
    attendee_name_array = @attendees.map do |attendee|
      attendee.name
    end

    attendee_name_array
  end

  def craft_with_most_supplies
    craft_supplies = []
    @crafts.each do |craft|
      craft_supplies << craft.required_supplies.keys.size
    end
    most_supplies = craft_supplies.max
    craft_with_most_supplies = craft_supplies.rindex(most_supplies)
    craft_name = @crafts[craft_with_most_supplies].name
    binding.pry
  end
end
