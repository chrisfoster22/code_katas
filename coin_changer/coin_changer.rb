class CoinChanger

  def initialize(amount)
    @amount = amount
  end

  def change
    coins = []
    @amount.times { coins << 1 }
    coins
  end

end
