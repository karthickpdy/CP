def generate_prime(n)
	primes = (0..n).to_a
	primes[0] = nil
	primes[1] = nil
	(2..Math.sqrt(n)).each do |i|
		if primes[i]
			(i**2..n).step(i).each do |j|
				primes[j] = nil
			end
		end
	end	
	primes.compact
end

generate_prime(10**7)
prime_hash = Hash.new(false)
primes.each do |a|
	prime_hash[a] = true
end

n = gets.to_i
arr = gets.split(" ").map(&:to_i)
q = gets.to_i
value_map = arr.map { |e| prime_hash[e] }

q.times do
	l,r = gets.split(" ").map(&:to_i)
	value_map	
end