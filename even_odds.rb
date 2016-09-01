n,k = gets.split(" ").map(&:to_i)
even_count = n /2
odd_count = n / 2
odd_count += 1 if n % 2 != 0
ans = k > odd_count ? (k - odd_count) * 2 : k * 2 - 1
puts ans