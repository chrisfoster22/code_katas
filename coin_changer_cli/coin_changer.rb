require_relative 'coins'
require 'active_support/inflector'

class CoinChanger

  attr_accessor :amount

  def initialize
    @amount = 0
  end

  def changer(amount)
    @amount = amount.to_i.abs
    coins = []
    amount = amount.to_i
    coins << get_coins(Quarter.new)
    coins << get_coins(Dime.new)
    coins << get_coins(Nickel.new)
    coins << get_coins(Penny.new)
    output(coins)
  end

  def get_coins(coin)
    coins = []
    value = @amount / coin.value
    @amount -= (value * coin.value)
    value.times { coins << coin}
    coins
  end

  def output(coins)
    string_array = []
    coins.each do |c|
      count = c.count
      unless count == 0
        string = ""
        string << "#{count} "
        string << "#{c[0].class}".pluralize if count > 1
        string << "#{c[0].class}" if count == 1
        string_array << string
      end
    end
    string_array.join(', ')
  end
end
