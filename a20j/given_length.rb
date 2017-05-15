m,s = gets.split(" ").map(&:to_i)
min = []
sum = s

(0...m).each do |i|
	(0..9).each do |j|
		next if i == 0 && j == 0
		if (s-j) >= 0 &&  (s-j) <= (m-i-1) * 9
			min << j
			s -= j
			break
		end
	end
end


max = []
s = sum
(0...m).each do |i|
	(9.downto(0)).each do |j|
		next if i == 0 && j == 0
		if (s-j) >= 0 && (s-j) <= (m-i-1) * 9
			max << j
			s -= j
			break
		end
	end
end
if min.empty? || max.empty? || min.length < m || max.length < m
	if s == 0 && m == 1
		puts "0 0"
	else
		puts "-1 -1"
	end
else
	puts "#{min.join("")} #{max.join("")}"
end