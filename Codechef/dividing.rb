n = gets.to_i
arr = gets.split(" ").map(&:to_i)
given_sum = arr.inject(&:+)
sum = (n * (n+1))/2
puts sum == given_sum ? "YES" : "NO" 