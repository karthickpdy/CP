n = gets.to_i
count = Hash.new(0)
n.times do
	a,b = gets.split(" ").map(&:to_i)
	count[a] += 1
	count[b] += 1	
end

ans = false

(1..5).each do |i|
	a = count[i]
	if a >= 3 || a <= 1
		ans = true
		break
	end
end

puts ans ? "WIN" : "FAIL"