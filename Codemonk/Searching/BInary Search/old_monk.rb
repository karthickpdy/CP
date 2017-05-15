#last_element greater than or equal to given number
# arr is sorted reverse
def binsearch_last_element(arr,x)
l,r = 0,arr.length - 1
# true true true false false - find the last true value
while l < r
mid = l + (r-l+1)/2
if(arr[mid] >= x) # return true for mid element greater than equal to x
l = mid
else
r = mid - 1
end
end

arr[l] >= x ? l : nil

end

# binsearch_last_element([9,8,8,8,8,8,7,7,7,6,6,6],6)
t = gets.to_i
t.times do 
	n = gets.to_i
	a = gets.split(" ").map(&:to_i)
	b = gets.split(" ").map(&:to_i)
	max = 0
	(0...a.length).each do |i|
		ind = binsearch_last_element(b[i..-1],a[i])
		max = ind if ind && ind > max

	end
	puts max
end