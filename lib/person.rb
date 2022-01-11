class Person
  attr_reader :name, :interests, :supplies

  def initialize(info)
    @name   = info[:name]
    @interests = info[:interests]
    @supplies = Hash.new(0)
  end

  def add_supply(key, value)
    @supplies[key] += value
  end
end
