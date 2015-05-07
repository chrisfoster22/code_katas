require_relative 'coins'
require 'active_support/inflector'

class CoinChanger

  attr_accessor :amount

  def initialize
    @amount = 0
  end

  def changer(amount)
    @amount = amount.to_i
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
      unless c.count == 0
        string = ""
        string << "#{c.count} "
        string << "#{c.last.class}".pluralize if c.count > 1
        string << "#{c.last.class}" if c.count == 1
        string_array << string
      end
    end
    string_array.join(', ')
  end
end
