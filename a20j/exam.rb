n,k = gets.split(" ").map(&:to_i)
q = k/n
re = 0
re = n - (k % n) if q == 2
puts re