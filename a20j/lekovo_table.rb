n,k = gets.split(" ").map(&:to_i)
arr = Array.new(n)
n.times do |i|
	arr[i] = []
	n.times do |j|
		if i == j
			arr[i] << k
		else
			arr[i] << 0
		end
	end
end
# puts "#{arr}"
arr.each do |a|
	puts "#{a.join(' ')}"
end

#Good http://codeforces.com/problemset/problem/361/A