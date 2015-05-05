require 'rspec'
require 'coin_changer'

RSpec.describe CoinChanger do

  it "accepts an integer amount" do
    changer = CoinChanger.new(100)
  end

  it "returns a penny" do
    changer = CoinChanger.new(1)
    changer = [1]
  end
end
