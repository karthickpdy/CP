list = {
	1 => [3,"LB"],
	2 => [3,"MB"],
	3 => [3,"UB"],
	4 => [-3,"LB"],
	5 => [-3,"MB"],
	6 => [-3,"UB"],
	7 => [1,"SU"],
	8 => [-1,"SL"]
}

t = gets.to_i
t.times do 
	n = gets.to_i
	x = n % 8
	x = 8 if x == 0
	puts "#{n + list[x][0]}#{list[x][1]}"
end