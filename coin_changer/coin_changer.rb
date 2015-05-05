class CoinChanger

  def initialize(amount)
    @amount = amount
  end

  def change
    coins = []
    coins << 5 if @amount / 5 > 0
    coins.each { |c| @amount =- c }
    @amount.times { coins << 1 }
    coins
  end

end
