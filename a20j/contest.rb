def calculate(p,t)
	[3 * p / 10, p - ((p/250)*t)].max
end

a,b,c,d = gets.split(" ").map(&:to_i)
misha = calculate(a,c)
vasya = calculate(b,d)
if misha > vasya
	ans = "Misha" 
elsif misha < vasya
	ans = "Vasya"
else
	ans = "Tie"
end
puts ans
		