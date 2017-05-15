k = gets.to_i
count = Hash.new(0)
arr = []
4.times do
	arr << gets.split("").map(&:to_i)
end
arr.flatten!
arr.each do |a|
	count[a] += 1
end
count.delete(0)
ans = count.values.all?{|c| c <= 2 * k}
puts ans ? "YES" : "NO"