class CoinChanger

  def initialize
    @quarters = 0
    @dimes = 0
    @nickels = 0
    @pennies = 0
  end

  def get_amount
    amount(gets.chomp)
  end

  def amount(integer)
    integer.to_i
  end

  def changer(amount)
    coins = []
    @quarters = amount / 25 unless amount /25 == 0
    amount -= (@quarters * 25)
    @dimes = amount / 10 unless amount /10 == 0
    amount -= (@dimes * 10)
    @nickels = amount / 5 unless amount / 5 == 0
    amount -= (@nickels) * 5
    @pennies = amount
    output(@pennies, @nickels, @dimes, @quarters)
  end

  def output(pennies, nickels, dimes, quarters)
    string = ""
    string << "#{quarters} quarter#{(quarters > 1) ? 's' : ''}" if quarters > 0
    string << "#{dimes} dime#{(dimes > 1) ? 's' : ''}" if dimes > 0
    string << "#{nickels} nickel#{(nickels > 1) ? 's' : ''}" if nickels > 0
    string << "#{pennies} penn#{(pennies == 1) ? 'y' : 'ies'}" if pennies > 0
    string
  end

end
