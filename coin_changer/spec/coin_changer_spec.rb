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

  it "returns a nickel" do
    changer = CoinChanger.new(5)
    expect(changer.change).to eql [5]
  end

  it "returns a nickel and penny" do
    changer = CoinChanger.new(6)
    expect(changer.change).to eql [5, 1]
  end

  it "returns a dime" do
    changer = CoinChanger.new(10)
    expect(changer.change).to eql [10]
  end

end
