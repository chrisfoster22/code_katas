class CoinChanger

  attr_reader :amount

  def initialize
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
    @amount = 0
  end

  def get_amount
    amount(STDIN.gets.chomp)
  end

  def amount(integer)
    integer.to_i
  end

  def changer(amount)
    @amount = amount(amount)
    quarters = get_coins(25)
    dimes = get_coins(10)
    nickels = get_coins(5)
    pennies = get_coins(1)
    output(pennies, nickels, dimes, quarters)
  end

  def get_coins(coin)
    value = @amount / coin
    @amount -= (value * coin)
    value
  end

  def output(pennies, nickels, dimes, quarters)
    string = ""
    if quarters > 0
      string << "#{quarters} quarter#{(quarters > 1) ? 's' : ''}"
      string << ', ' if dimes > 0
    end
    if dimes > 0
      string << "#{dimes} dime#{(dimes > 1) ? 's' : ''}"
      string << ', ' if nickels > 0
    end
    if nickels > 0
      string << "1 nickel"
      string << ', ' if pennies > 0
    end
    string << "#{pennies} penn#{(pennies == 1) ? 'y' : 'ies'}" if pennies > 0
    string
  end

end
