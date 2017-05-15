n = gets.to_i
s_a = 0
s_g = 0
A = "A"
ans = ""
# ans = A*n
# if n < 1000
G = "G"
n.times do |i|
	a,b = gets.split(" ")
	a = a.to_i
	b = b.to_i

	x = s_a + a
	if (x - s_g) <= 500
		s_a = x
		ans << A
	else
		s_g += b
		ans << G
	end
end


if (s_a - s_g).abs <= 500
	puts ans
else
	puts "-1"
end




#GOOD - From TLE To AC
# Assigned constants for A,G
# stored addition in variable
#Appended ans to string instead of arr
#changed map as 2 separate to_i - last step
