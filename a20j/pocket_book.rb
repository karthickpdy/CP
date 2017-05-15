n,m = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.chomp
end
ans = []
(0...m).each do |j|
	count = 0
	h = {}
	(0...n).each do |i|
		letter = arr[i][j]
		unless h[letter]
			h[letter] =  true
			count += 1
		end 
	end
	ans << count
end
s = 1
ans.each do |i|
	s = (s * i) % 1000000007
end
puts s