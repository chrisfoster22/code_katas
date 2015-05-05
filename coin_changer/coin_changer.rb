class CoinChanger

  def initialize(amount)
    @amount = amount
    @coins = []
  end

  def change
    get_coin(25)
    get_coin(10)
    get_coin(5)
    get_coin(1)
    @coins
  end

  def get_coin(coin)
    number = @amount / coin
    number.times { @coins << coin }
    @amount -= (number * coin)
  end

end
