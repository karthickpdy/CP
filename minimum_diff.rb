gets
arr = gets.chomp.split(" ").map(&:to_i)

max_arr = []
(1...arr.count).each do |i|
max_arr << arr[i] - arr[i-1]
end
initial_max = max_arr.max
max_arr = []
(1...arr.count-1).each do |i|
  max_arr << arr[i+1] - arr[i-1]
end
a = max_arr.any?{|x| x < initial_max}

puts a ? initial_max : max_arr.min