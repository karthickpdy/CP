t = gets.to_i
t.times do 
	n = gets.to_i
	arr = gets.split(" ").map(&:to_i)	
	ans = 1
	speed = arr[0]
	(1..n-1).each do |i|
		speed = [arr[i],speed].min
		ans += 1 if speed == arr[i]
	end
	puts ans
end