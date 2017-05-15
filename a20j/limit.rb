def gcd(a,b)
if b == 0
  return a;
else
  return gcd(b, a % b);
end
end

n,m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)

sign = nil
ans = nil
if n > m
	ans = "Infinity"
	sign = "-" if (a[0]/b[0]) < 0
elsif n < m
	ans = "0/1"
	# sign = "-" if (a[0]/b[0]) < 0
else
	num = a[0]
	den = b[0]
	if num < den
		a,b = den,num 
	else
		a,b = num,den
	end
	gc = gcd(a,b)
	num /= gc
	den /= gc
	ans = "#{num.abs}/#{den.abs}"
	# puts "here"
	sign = "-" if (num/den) < 0
end



puts "#{sign}#{ans}"

# https://en.wikipedia.org/wiki/Limit_of_a_function
# Rational functions
