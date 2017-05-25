n = gets.to_i
x = 0

puts $stdin.inject(0) { |mem, i|   mem ^= i.to_i}