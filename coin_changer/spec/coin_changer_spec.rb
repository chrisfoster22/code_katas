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

  it "returns a dime and penny" do
    changer = CoinChanger.new(11)
    expect(changer.change).to eql [10, 1]
  end

  it "returns a quarter" do
    changer = CoinChanger.new(25)
    expect(changer.change).to eql [25]
  end

  it "returns a quarter, dime, nickel, and penny" do
    changer = CoinChanger.new(41)
    expect(changer.change).to eql [25, 10, 5, 1]
  end

end
