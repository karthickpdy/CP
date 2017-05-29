t = gets.to_i

@same = [0,1,5,6]
@cyclicity = {3 => 4,4 => 2,7 => 4, 8 => 4, 9 => 2}

def last(a,b)
	return 1 if b == 0
	x = a % 10
	if(@same.include?(x))
		return x
	else
		b %= @cyclicity[x]
		return (x ** b) % 10
	end
end
t.times do 
	a,b = gets.split(" ").map(&:to_i)
	puts last(a,b)
end