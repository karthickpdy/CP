a,b = gets.split(" ").map(&:to_i)
ans = a - b
error = ans - 1
error = ans + 1 if (ans % 10 == 0) || (ans % 10 == 1)
puts error