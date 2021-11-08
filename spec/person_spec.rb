require './lib/person'
RSpec.describe Person do

  before(:each) do
    @person = Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})
  end


  it 'is an instance of Person' do
    expect(@person).to be_instance_of(Person)
  end

  it 'can access name from inputted hash' do
    expect(@person.name).to eq("Hector")
  end

  it 'can access interests array' do
    expected_array = ["sewing", "millinery", "drawing"]
    expect(@person.interests).to eq(expected_array)
  end

  it 'can initialize empty supplies hash' do
    expect(@person.supplies).to eq({})
  end

  it 'can #add_supply to supplies hash' do
    @person.add_supply('fabric', 4)
    @person.add_supply('scissors', 1)
    @person.add_supply('fabric', 3)

    expect(@person.supplies).to eq({"fabric" => 7, "scissors" => 1})
  end

end
