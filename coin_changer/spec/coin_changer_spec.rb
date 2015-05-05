require 'rspec'
require_relative '../coin_changer.rb'

RSpec.describe CoinChanger do

  it "returns a penny" do
    changer = CoinChanger.new(1)
    expect(changer.change).to eql [1]
  end

  it "returns two pennies" do
    changer = CoinChanger.new(2)
    expect(changer.change).to eql [1, 1]
  end

end
