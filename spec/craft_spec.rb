require './lib/person'
require './lib/craft'
require './lib/event'

RSpec.describe "craft" do
  before(:each) do
    @craft = Craft.new('knitting', {yarn: 20,
                                    scissors: 1,
                                    knitting_needles: 2})
  end

  it "exists" do
    expect(@craft).to be_a Craft
  end

  it "has attributes" do
    expect(@craft.name).to eq('knitting')
    expect(@craft.supplies_required).to eq({:yarn=>20, :scissors=>1, :knitting_needles=>2})
    expect(@craft.amount_of_supplies).to eq(3)

  end
end
