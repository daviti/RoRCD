monsters = [{:health => 500, :name => "monster1" }, {:health => 500, :name => "monster2"}]

5.times { |round|
puts "ROUND" + round.to_s
monsters.each_with_index { |monster, loop_count|
	attack = rand(100)
	monster[:health] -= attack

	attacker = loop_count == 0 ? "monster1" : "monster2"
	attacked = loop_count == 1 ? "monster1" : "monster2"

	puts "#{attacker} attackes #{attacked} with #{attack.to_s} damage"
	puts "#{attacked} health is now #{monster[:health]}/500"
	puts
	}
}

puts (monsters[0][:health] > monsters[1][:health] ? monsters[0][:name]:monsters[1][:name]) + "wins the game"
	