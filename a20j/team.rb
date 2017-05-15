z,o = gets.split(" ").map(&:to_i)
if z >= o	
	if o < z-1
		ans = "-1"
	else
		ans = "01" * (z-1)
		ans << "0"
		ans << "1" if z  == o
	end
else
	spaces = z + 1
	if o > (spaces * 2)
		ans = "-1"
	else
		pairs = o - spaces 
		rem_ones = o - pairs * 2
		arr = ["11"] * pairs + ["1"] * rem_ones
		ans = arr.join("0")
	end
end

puts ans