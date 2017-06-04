def lower_bound(arr,x)
	l = 0
	r = arr.length - 1
	ans = 0
	while l <= r	
		mid = l + (r-l)/2		
		if(arr[mid] < x)		
			l = mid + 1
		elsif(arr[mid] >= x)
			ans = mid 
			r = mid - 1
		end
	end
	return arr[ans] == x ? ans  : -1 
end

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
	return arr[ans] == x ? ans  : -1
end

arr = [5, 7, 7,8,8,8, 8, 8, 10]
x = 6
puts lower_bound(arr,x)
puts upper_bound(arr,x)