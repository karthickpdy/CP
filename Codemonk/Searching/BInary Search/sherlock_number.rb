def smaller_count(arr,x)
l,r = 0,arr.length - 1
while l < r
# true true true false false - return last true value
mid = l + (r - l + 1) / 2
if(arr[mid] <= x)
l = mid
else
r = mid - 1
end     
end
arr[l] <= x ? l + 1 : 0
end

def binsearch(arr,p,n)
    l,r = 1,n
    while l < r
        mid = l + (r - l + 1) / 2
        if mid < smaller_count(arr,mid) + p
        	l = mid + 1
        elsif mid > smaller_count(arr,mid) + p
        	r = mid - 1
        else
        	return mid
        end        	        
    end
end



t = gets.to_i
t.times do 
	n,k,p = gets.split(" ").map(&:to_i)
	a = gets.split(" ").map(&:to_i).sort
    puts binsearch(a,p,n) || -1
end