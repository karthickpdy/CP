def upper_bound(arr,x)
	l = 0
	r = arr.length - 1
	ans = 0
	while l <= r	
		mid = l + (r-l)/2
		if (arr[mid] <= x)
			ans = mid
			l = mid + 1
		else
			r = mid - 1
		end
	end
	if(arr[ans] == x)
		return ans
	elsif(arr[ans] < x)
		return ans + 1
	else
		ans != 0 ?  ans - 1 : ans
	end
end

arr = [1,3,3,3,3,4,4,4,4,4,5,6,7,8,12,15]
puts upper_bound(arr,3)
puts upper_bound(arr,4)

puts upper_bound(arr,0)
puts upper_bound(arr,19)
puts upper_bound(arr,9)
puts upper_bound(arr,2)