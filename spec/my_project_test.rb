require '.././lib/player'
require '.././lib/die'
require '.././lib/turn'


player = Player.new("vanja")
puts "#{player.points} should equal 0"

puts "#{Player.new("vanja")} should be an instance of Player."

player = Player.new ("vanja")
player.add_points(4)
puts "#{player.points} should equal 4."

die = Die.new
puts "#{die.roll} should return nil"

die = Die.new
die.roll!
puts "#{die.roll} should equal a random number between one and six."

turn=Turn.new(player)
puts "#{turn.points} should equal 0"

turn = Turn.new(player)
puts "#{turn.over?} should equal false"

turn = Turn.new(player)
die = Die.new
turn.roll(die)
puts "#{turn.over?} should equal true if #{die.roll} equal 1 and false otherwise."