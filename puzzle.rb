m,n = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
min_diff = arr.max
arr.sort!
for i in (m-1..n-1)
  diff = arr[i] - arr[i- m +1]
  min_diff = diff if diff < min_diff
end
puts min_diff