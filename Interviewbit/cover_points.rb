    def coverPoints(a, b)
    	count = 0
    	(1...a.length).each do |i|
    		count += [(a[i] - a[i-1]).abs,(b[i] - b[i-1]).abs].max
    	end
    	count
    end