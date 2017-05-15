n = gets.to_i
a = gets.split(" ").map(&:to_i)
a.sort!
ans = nil

a.each_with_index do |x,i|
	if x != i + 1
		ans = i + 1
		break
	end
end

ans = a[-1] + 1 unless ans
puts ans
