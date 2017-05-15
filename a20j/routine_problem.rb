def gcd(a,b)
if b == 0
  return a;
else
  return gcd(b, a % b);
end
end


a,b,c,d = gets.split(" ").map(&:to_i)

l,m = (a/b.to_f),(c/d.to_f)

num = den = 0
# puts "#{l} #{m}"
if l < m
	num = (b * c) - (a * d)
	den =  b * c
elsif l > m
	num = (a * d) - (b * c)
	den = a * d
end

if num == 0 && den == 0
	puts "0/1"
else
	g = gcd(num,den)
	puts "#{num/g}/#{den/g}"
end

