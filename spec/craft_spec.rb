require './lib/person'
require './lib/craft'

describe 'Craft' do
  it 'exists' do
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    expect(craft).to be_an_instance_of(Craft)
  end

  it 'exists' do
    craft = Craft.new('knitting', {yarn: 20, scissors: 1, knitting_needles: 2})

    expect(craft.name).to eq("knitting")
    expect(craft.supplies_required).to eq({:yarn=>20, :scissors=>1, :knitting_needles=>2})
  end
end
