require 'rspec'
require_relative '../coin_changer.rb'

RSpec.describe CoinChanger do

  before(:each) do
    @coin_changer = CoinChanger.new
  end

  it 'accepts an integer from user input' do
    expect(@coin_changer.amount("100")).to eql 100
  end

  it 'returns a penny' do
    expect(@coin_changer.output(1)).to eql "1 penny"
  end

  it 'returns two pennies' do
    expect(@coin_changer.output(2)).to eql "2 pennies"
  end

  it 'returns a nickel' do
    expect(@coin_changer.output(5)).to eql "1 nickel"
  end

end
