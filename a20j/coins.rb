n = gets.to_i
ans = [n]
while n > 1
	# puts "#{n}"
	(2..n).each do |i|
		if n % i == 0
			n /= i
			ans << n 
			break
		end
	end	
end

puts ans.join(" ")