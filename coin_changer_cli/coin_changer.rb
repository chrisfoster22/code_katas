class CoinChanger

  def get_amount
    amount(gets.chomp)
  end

  def amount(integer)
    integer.to_i
  end

  def changer(amount)
    coins = []
    amount.times { coins << 1 }
    coins
  end

  def output(amount)
    coins = changer(amount)
    count = coins.count
    string = "#{count} penn#{(count == 1) ? 'y' : 'ies'}"
    string
  end

end
