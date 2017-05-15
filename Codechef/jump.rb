n = gets.to_i
ans = true if n % 6 == 0 || n % 6 == 3 || n % 6 == 1
puts ans ? "yes" : "no"