class Person
  attr_reader :name, :interests, :supplies

  def initialize(info_hash)
    @name = info_hash[:name]
    @interests = info_hash[:interests]
    @supplies = {}
  end

  def add_supply(name, number)
    @supplies[name] ||= 0
    @supplies[name] += number
  end
end
