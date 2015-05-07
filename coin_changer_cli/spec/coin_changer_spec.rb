require 'rspec'
require_relative '../coin_changer.rb'

RSpec.describe CoinChanger do
  let(:coin_changer) { CoinChanger.new }

  it 'returns a penny' do
    expect(coin_changer.changer(1)).to eql "1 Penny"
  end

  it 'returns two pennies' do
    expect(coin_changer.changer(2)).to eql "2 Pennies"
  end

  it 'returns a nickel' do
    expect(coin_changer.changer(5)).to eql "1 Nickel"
  end

  it 'returns a dime' do
    expect(coin_changer.changer(10)).to eql "1 Dime"
  end

  it 'returns a quarter' do
    expect(coin_changer.changer(25)).to eql "1 Quarter"
  end

  it 'returns a nickel and a penny' do
    expect(coin_changer.changer(6)).to eql "1 Nickel, 1 Penny"
  end

  it 'returns a nickel and two pennies' do
    expect(coin_changer.changer(7)).to eql "1 Nickel, 2 Pennies"
  end

  it 'returns a quarter, dime, nickel, and penny' do
    expect(coin_changer.changer(41)).to eql "1 Quarter, 1 Dime, 1 Nickel, 1 Penny"
  end

  it 'returns two quarters and a nickel' do
    expect(coin_changer.changer(55)).to eql "2 Quarters, 1 Nickel"
  end

  it 'will work for negative numbers' do
    expect(coin_changer.changer(-55)).to eql "2 Quarters, 1 Nickel"
  end
end
