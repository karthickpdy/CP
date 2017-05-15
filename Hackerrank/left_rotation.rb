n,d = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
d = start = d % n
print arr[d]
d += 1
d %= n
while d != start
	print " #{arr[d]}"
	d += 1
	d %= n
end