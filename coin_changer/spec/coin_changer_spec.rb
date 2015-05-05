require 'rspec'
require_relative '../coin_changer.rb'

RSpec.describe CoinChanger do

  it "accepts an integer amount" do
    changer = CoinChanger.new(100)
  end
end
