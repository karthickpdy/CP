t = gets.to_i
t.times do 
	a = gets.chomp.split(" ")
	b = gets.chomp.split(" ")
	presence = Hash.new(false)
	a.each do |x|
		presence[x] = true
	end
	count = 0
	b.each do |y|
		count += 1 if presence[y]
	end
	puts count >= 2 ? "similar" : "dissimilar"
end