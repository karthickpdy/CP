n,q = gets.split(" ").map(&:to_i)
seq = []
last_ans = 0
n.times do
	seq << []
end

q.times do
	arr = gets.split(" ").map(&:to_i)
	x,y = arr[1],arr[2]
	s = seq[(x ^ last_ans) % n]
	if arr[0] == 1
		s << y
	else
		size = s.length 
		last_ans = s[y % size]
		puts last_ans
	end
end