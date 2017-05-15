t = gets.to_i
t.times do 
	
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)
	even = arr.count{|x| x.even?}
	odd = n - even
	puts odd * even
end