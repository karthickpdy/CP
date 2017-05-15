d = gets.to_i
n = gets.to_i
arr = gets.split(" ").map(&:to_i)
ans = arr[0..-2].map{|a| d - a}
puts ans.inject(0,:+)
# 