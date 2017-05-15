def count(sum,k,d,i,arr)
	if sum < 0
		return					
	end

	if sum == 0 && arr.any? { |e| e >= d  }
		@c += 1
		return
	end

	(1..k).each do |v|
		arr[i] = v
		count(sum-v,k,d,i+1,arr.dup)
	end
end

n,k,d = gets.split(" ").map(&:to_i)
# @c = 0
# count(n,k,d,0,[])
# puts @c
MOD = 1000000007
dp = Array.new(n+1,0)
dp_more = Array.new(n+1,0)
(1..k).each do |i|
	dp[i] = 1
	dp_more[i] = 1 if i < d
end

(1..n).each do |i|
	(1..k).each do |j|
		break if i < j
		dp[i] = dp[i] + dp[i-j] % MOD
	end
end

(1..n).each do |i|
	(1..k).each do |j|
		break if i < j
		# puts "#{i-j}  #{dp_more}"
		dp_more[i] = dp_more[i] + dp_more[i-j] % MOD if (j < d)
	end
end

puts (dp[n] - dp_more[n] + MOD) % MOD