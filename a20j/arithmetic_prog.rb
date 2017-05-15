# Sort the elements
# find diff array
# check if d is the same for all elements
# if so insert at first and last
# if d is diff for just one element insert at that position
# if d is diff for more than one element no ap is possible
# special case when 2 elements - can be inserted in between by changing d as d/ 2

n = gets.to_i
arr = gets.split(" ").map(&:to_i)
ans = nil
if arr.length == 1
	puts -1
else
	arr.sort!
	if arr.length == 2
		d = arr[1] - arr[0]
		ans = [arr[0] - d,arr[1]+d]
		mid = (arr[0] + arr[1]) / 2
		ans << mid if (mid - arr[0] == arr[1] - mid) 
	else
		diff = []
		arr.each_cons(2) do |a,b|
			diff << b - a
		end
		d = diff.min
		count = diff.count{|x| x!=d}
		if count == 0
			ans = [arr[0] - d,arr[-1]+d]
		elsif count == 1
			i = diff.index{|x| x!=d}
			ans = [arr[i]+d] if arr[i]+d == arr[i+1]-d
		end

	end

	if ans
		ans.uniq!
		puts ans.length
		puts ans.sort.join(" ")
	else
		puts 0
	end
end