
def pred_lb(mid,target)
mid >= target
end

def binsearch_lb(arr,target)
l = 0
r = arr.length - 1	

while l < r
mid = l + ((r-l)/2)
if pred_lb(arr[mid],target)
r = mid
else
l = mid + 1
end
end

pred_lb(arr[l],target) ? l : l + 1
end

def pred_ub(mid,target)
mid > target
end

def binsearch_ub(arr,target)
	l = 0
	r = arr.length - 1
	while l < r
	m = l + ((r-l+1)/2)
	if pred_ub(arr[m],target)
	r = m - 1
	else
	l = m
	end
	end
	!pred_ub(arr[l],target) ? l +1 : l
end
# @param {Integer[][]} matrix
# @param {Integer} k
# @return {Integer}
def kth_smallest(matrix, k)
    n = matrix.length
    l = matrix[0][0]
    r = matrix[n-1][n-1]    
    
    while l < r
        count = 0
        mid = l + ((r-l)/2) 
        # puts "#{mid}"
        (0...n).each do |i|
            #Count the number of elements smaller than this mid
            z = binsearch_ub(matrix[i],mid)
            # puts "#{l} #{r} #{mid},#{z}"
            count += z
        end
        # puts "#{mid},#{count}"
        if count < k
            l = mid + 1
        else
            r = mid
        end
    end
    l
end


kth_smallest([[1,5,9],[10,11,13],[12,13,15]],8)