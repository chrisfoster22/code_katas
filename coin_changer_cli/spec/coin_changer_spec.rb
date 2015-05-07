require 'rspec'
require_relative '../coin_changer.rb'

RSpec.describe CoinChanger do
  let(:coin_changer) { CoinChanger.new }

  it 'accepts an integer from user input' do
    expect(coin_changer.amount("100")).to eql 100
  end

  it 'returns a penny' do
    expect(coin_changer.changer(1)).to eql "1 penny"
  end

  it 'returns two pennies' do
    expect(coin_changer.changer(2)).to eql "2 pennies"
  end

  it 'returns a nickel' do
    expect(coin_changer.changer(5)).to eql "1 nickel"
  end

  it 'returns a dime' do
    expect(coin_changer.changer(10)).to eql "1 dime"
  end

  it 'returns a quarter' do
    expect(coin_changer.changer(25)).to eql "1 quarter"
  end

  it 'returns a nickel and a penny' do
    expect(coin_changer.changer(6)).to eql "1 nickel, 1 penny"
  end

  it 'returns a nickel and two pennies' do
    expect(coin_changer.changer(7)).to eql "1 nickel, 2 pennies"
  end

  it 'returns a quarter, dime, nickel, and penny' do
    expect(coin_changer.changer(41)).to eql "1 quarter, 1 dime, 1 nickel, 1 penny"
  end

  it 'returns two quarters and a nickel' do
    expect(coin_)
  end

end
