n = gets.to_i
arr = gets.split(" ").map(&:to_i)
zero = nil
one = nil
two = nil
three = nil

arr.each do |a|
	if !zero &&  a == 0
		zero = a 		
	elsif !one && a > 0 && a <= 9
		one = a 
	elsif !two && a < 100 && (a % 10) == 0		
		two = a
	elsif !three && a == 100
		three = a
	end
end
res = [zero,one,two,three].compact
if res.empty?
	res = [arr.first]
elsif !one && !two
	 val = arr.detect{|a| a.to_s.length == 2}
	 res << val if val
end


puts res.count
puts res.join(' ')