n = gets.to_i
arr = gets.split(" ").map(&:to_i)
arr.reverse!

min,min_index = arr.each_with_index.min

arr.unshift(arr.delete_at(min_index))
secs = min_index

max,max_index = arr.each_with_index.max
secs += (n - max_index - 1)
puts secs