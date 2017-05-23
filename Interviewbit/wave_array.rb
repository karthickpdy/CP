    def wave(a)
    	i = 1
    	a.sort!
    	while i < a.length
    		a[i],a[i-1] = a[i-1],a[i]
    		i += 2
    	end
    	a
    end
    arr = [3,4,1,5,6,8,10]
    puts "#{wave(arr)}"