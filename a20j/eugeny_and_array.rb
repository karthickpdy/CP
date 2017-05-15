# def query(l,r)
#  ele = r - l + 1
#  return false if ele.odd?
#  val = ele / 2
#  return true if val <= @one_count && val <= @minus_count
#  return false
# end

n,m = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
@one_count = arr.count(1)
@minus_count = n - @one_count
ans = []
m.times do
	l,r = gets.split(" ")
	l = l.to_i
	r = r.to_i
	ele = r - l + 1
	if ele.odd?
 		ans << "0"
 		next 
 	end
 	val = ele / 2
 	if val <= @one_count && val <= @minus_count
 		ans << "1"
 		next 
 	end
 	ans << "0"
end

ans.each do |a|
	puts a
end


#Good http://codeforces.com/contest/302/problem/A
# From TLE to 811 ms
# Appending to array and iterating and displaying result is way faster than puts result directly around 100 ms diff
# Removed the method calls
# removed boolean checks
# Removed the map and did to_i directly for l and r 
# Directly appended string to answer - there will be a to_s call for puts that cost from 889 to 811 the fuck