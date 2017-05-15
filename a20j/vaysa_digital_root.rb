# def digital_root(n)
# 	return @dp[n] if @dp[n]
# 	s = n.to_s.split("").map(&:to_i).inject(&:+)
# 	if s < 10
# 		@dp[n] = s
# 		return s
# 	end
# 	@dp[n] = digital_root(s)
# 	return @dp[n]
# end

# digits,d = gets.split(" ").map(&:to_i)
# @dp = {}
# start = 10 ** (digits - 1)
# start = 0 if start == 1
# finish = (10 ** digits) - 1
# ans = nil
# if d == 0
# 	if digits == 1
# 		ans = 0
# 	end
# else
# 	(start..finish).each do |a|
# 		if digital_root(a) == d
# 			ans = a
# 			break
# 		end
# 	end
# end
# if ans
# 	puts ans
# else
# 	puts "No solution"
# end


def digital_root(n)
	s = n.to_s.split("").map(&:to_i).inject(&:+)
end

digits,d = gets.split(" ").map(&:to_i)
@dp = {}
start = 10 ** (digits - 1)
start = 0 if start == 1
finish = start + 10
ans = nil

(start..finish).each do |a|
	if digital_root(a) == d
		ans = a
		break
	end
end

if ans
	puts ans
else
	puts "No solution"
end

#Good http://codeforces.com/problemset/problem/355/A