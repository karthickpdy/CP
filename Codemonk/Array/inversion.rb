t = gets.to_i
t.times do 
	n = gets.to_i
	arr = []
	c = 0
	n.times do
		arr << gets.split(" ").map(&:to_i)
	end
	(0...n).each do |i|
		(0...n).each do |j|
			l = i
			(l...n).each do |p|
				m = j
				(m...n).each do |q|
					c += 1 if arr[i][j] > arr[p][q]
				end
			end
		end		
	end
	puts c
end