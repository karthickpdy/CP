def cows_can_be_accomodated?(arr,cows,reqd)
	prev = arr[0]
	no = 1
	(1...arr.length).each do |i|
		break if no >= cows
		if arr[i] - prev >= reqd
			no += 1
			prev = arr[i]
		end
	end
	no >= cows
end

def bin_search(arr,cows)
	l = 0
	r = arr.max - arr.min
	while l < r
		m = l + (r-l+1)/2
		if cows_can_be_accomodated?(arr,cows,m)
			l = m
		else
			r = m - 1
		end		
	end
	l
end

t = gets.to_i
t.times do 
	n,c = gets.split(" ").map(&:to_i)
	arr = []
	n.times do
		arr << gets.to_i
	end
	arr.sort!
	puts bin_search(arr,c)
end