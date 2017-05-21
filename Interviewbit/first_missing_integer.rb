class Solution
    # param a : array of integers
    #return an integer
    def firstMissingPositive(a)
    	# hash = Hash.new(false)

    	# a.each do |el|
    	# 	hash[el] = true
    	# end
    	
    	# found = nil

    	# (1..a.length).each do |x|
    	# 	unless hash[x]
    	# 		found = x
    	# 		break
    	# 	end
    	# end

    	# if found
    	# 	return found
    	# else
    	# 	return a.length + 1
    	# end
    	(0...a.length).each do |i|
    		while (a[i] > 0) && (a[i] <= a.length) && (a[i] != a[a[i]-1])
    			a[a[i]-1],a[i] = a[i],a[a[i]-1]
    		end
    	end

    	(0...a.length).each do |i|    		
    		return i + 1 if i + 1 != a[i]
    	end

    	return a.length + 1
    end
end
