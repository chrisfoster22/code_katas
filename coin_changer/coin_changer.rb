class CoinChanger

  def initialize(amount)
    @amount = amount
  end

  def change
    coins = []
    dimes = @amount / 10
    dimes.times { coins << 10 }
    @amount -= (dimes * 10)
    nickels = @amount / 5
    nickels.times { coins << 5 }
    @amount -= (nickels * 5)
    @amount.times { coins << 1 }
    coins
  end

end
