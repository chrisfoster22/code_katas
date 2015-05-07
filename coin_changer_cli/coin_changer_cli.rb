require_relative 'coin_changer'
changer = CoinChanger.new
puts "What would you like change for?"
amount = STDIN.gets.chomp
p changer.changer(amount)
