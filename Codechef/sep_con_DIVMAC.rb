# def generate_prime(n)
# 	primes = {}

# 	(2..n).each do |a|
# 		primes[a] = true	
# 	end

# 	(2..Math.sqrt(n)).each do |i|
# 		if primes[i]
# 			primes[i] = true
# 			(i**2..n).step(i).each do |j|
# 				primes[j] = false
# 			end
# 		end
# 	end	
# 	primes.select {|k,v| v == true}.keys
# end

# def least_prime_div(a)
# 	return @lpd[a] if @lpd[a]
# 	div = 1
# 	@primes.each do |p|
# 		puts p
# 		if a % p == 0
# 			div = p
# 			break
# 		end
# 		# break if p >= a
# 	end
# 	@lpd[a] = div
# 	div
# end

def least_prime_div(n)
	return @lpd[n] if @lpd[n]
	if (n==0 || n==1) 
		@lpd[n] = n
    	return n 
    end
    if (n%2==0)
    	@lpd[n] = 2
    	return 2 
    end
    if (n%3==0)
    	@lpd[n] = 3
    	return 3 
	end
	if (n%5==0)
		@lpd[n] = 5
    	return 5 
    end
	
	i = 7
    while (i*i) <= n 

        if ( n % i == 0 )
        	@lpd[n] = i
            return i
        end
        if ( n % ( i+4 ) == 0)
        	@lpd[n] = i + 4
            return i+4;
        end

        if ( n % ( i+6 ) == 0) 
        	@lpd[n] = i + 6
            return i+6;
        end

        if ( n % ( i+10 ) == 0) 
        	@lpd[n] = i + 10
            return i+10;
        end
        
        if ( n % ( i+12 ) == 0) 
        	@lpd[n] = i + 12
            return i+12;
        end

        if ( n % ( i+16 ) == 0) 
        	@lpd[n] = i + 16
            return i+16;
        end
        
        if ( n % ( i+22 ) == 0) 
        	@lpd[n] = i + 22
            return i+22;
        end

        if ( n % ( i+24 ) == 0) 
        	@lpd[n] = i + 24
            return i+24;
        end
        i += 30
    end
    @lpd[n] = n
    return n;

end


def operation_0(l,r)
	# return if @operation_0_done.all?{|a| a == true}
	(l..r).each do |i|
		least_prime_div(@arr[i])
		# @operation_0_done[i] = true
	end
end

def operation_1(l,r)
	result = 1
	(l..r).each do |i|
		result = [result,least_prime_div(@arr[i])].max
	end
	
	@result_set << result
end

# @primes = generate_prime(1000000)

t = gets.to_i

@lpd = {}

t.times do 
	n,m = gets.split(" ").map(&:to_i)
	@arr = gets.split(" ").map(&:to_i)	
	# @operation_0_done = Array.new(@arr.length,false)
	
	@result_set = []

	m.times do
		# gets
		type,a,b = gets.split(" ").map(&:to_i)
		# type == 0 ? operation_0(a-1,b-1) : operation_1(a-1,b-1)		
		operation_1(a-1,b-1)
	end
	puts @result_set.join(" ")
end
