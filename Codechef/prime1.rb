def generate_prime(n)
	primes = {}

	(2..n).each do |a|
		primes[a] = true	
	end

	(2..Math.sqrt(n)).each do |i|
		if primes[i]
			primes[i] = true
			(i**2..n).step(i).each do |j|
				primes[j] = false
			end
		end
	end	
	primes.select {|k,v| v == true}.keys
end

@primes = generate_prime(Math.sqrt(1000000000))

t = gets.to_i
puts "t #{t}"
t.times do 
	a,b = gets.split(" ").map(&:to_i)
	puts "here"
	@primes.each { |e| 
		(a..b)
	}	
	puts
end