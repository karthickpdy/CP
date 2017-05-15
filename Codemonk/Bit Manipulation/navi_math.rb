t = gets.to_i
MOD = (10 ** 9) + 7
t.times do |test|
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	add = [arr[0]]
	mul = [arr[0] % MOD]
	ans = Array.new(n,0)

	(1...n).each do |i|		
		mul_x = mul[i-1]
		add_x = add[i-1]
		
		x = (mul_x * ((add_x**-1) % MOD)) % MOD

		mul_y = (mul[i-1] * arr[i]) % MOD
		add_y = (add[i-1]+arr[i])

		y =  (mul_y * ((add_y**-1) % MOD)) % MOD
		if x > y
			add[i] = add_x
			mul[i] = mul_x
			ans[i] = x
		else			
			add[i] = add_y
			mul[i] = mul_y
			ans[i] = y
		end
	end
	# puts "#{ans}"
	puts "Case ##{test+1}: #{ans.max.to_i}"
end