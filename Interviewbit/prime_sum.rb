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
	primes.select! {|k,v| v == true}
end


def primesum(a)
	primes = generate_prime(a)
	# puts "#{primes}"
	(1..a).each do |i|
		if primes[i] && primes[a - i]
			return[i,(a-i)]
		end
	end

end

puts primesum(4)