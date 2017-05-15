n,m,k = gets.split(" ").map(&:to_i)
cells = n * m
tube_cell = cells/k
leftover = cells % k
odd = true
ans = []
count = tube_cell
(1..n).each do |i|
	range = odd ? (1..m) : m.downto(1)
	range.each do |j|
		if ans.length != k && count == tube_cell
			count = 0
			ans << []
		end
		ans[-1] << i << j
		count += 1		
	end
	odd = !odd
end

ans.each do |a|
	puts "#{a.length/2} #{a.join(' ')}"
end