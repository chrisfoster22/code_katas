class CoinChanger

  def get_amount
    amount(gets.chomp)
  end

  def amount(integer)
    integer.to_i
  end

  def changer(amount)

  end

  def output
    "1 penny"
  end

end
