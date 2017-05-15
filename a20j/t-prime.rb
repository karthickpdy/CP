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


n = gets.to_i
arr = gets.split(" ").map(&:to_i)
@primes = generate_prime(10 ** 6).map{|x| x *x}
true_arr = @primes & arr

true_hash = Hash[true_arr.map{|x| [x,true]}]
#d puts "#{true_hash}"
res = []
arr.each do |a|
	res << (true_hash[a] ? "YES" : "NO")
end

res.each do |i|
	puts i
end

#Good - From TLE To accept - optimized genrate prime to use array,
#instead of array lookup converted to hash for true check
#Used intersection of arrays to find the true value keys
