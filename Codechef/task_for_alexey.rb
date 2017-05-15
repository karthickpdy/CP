def gcd(a,b)
if b == 0
  return a;
else
  return gcd(b, a % b);
end
end

t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	lcm = []
	arr.each_with_index do |x,i|
		arr[(i+1)..-1].each do |y|			
			lcm << (x * y)/gcd(x,y)
		end
	end
	puts lcm.min
end