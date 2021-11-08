class Event
  attr_reader :name,
              :crafts,
              :attendees
  def initialize(name, crafts, attendees)
    @name       = name
    @crafts     = crafts
    @attendees  = attendees
  end

  def attendee_names
    @attendees.map do |attendee|
      attendee.name
    end
  end

  def craft_with_most_supplies
    craft_info = @crafts.max_by do |craft|
      craft.supplies_required.length
    end
    craft_info.name
  end

  def supply_list
    supply_list = []
    @crafts.each do |craft|
      craft.supplies_required.keys.each do |type|
      supply_list  << type.to_s
      end
    end
    supply_list.uniq
  end






  end
