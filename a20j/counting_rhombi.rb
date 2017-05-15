w,h = gets.split(" ").map(&:to_i)
ans = 0
(2..w).step(2) do |i|
	(2..h).step(2) do |j|
		ans += (w - i + 1) * (h - j + 1)
	end
end
puts ans