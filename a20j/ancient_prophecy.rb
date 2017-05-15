# 777-444---21-12-2013-12-2013-12-2013---444-777
require 'Date'

def days_in_month(year, month)
	Date.new(year, month, -1).day
end
count = Hash.new(0)

l = gets.chomp.split("-")
# puts "#{l}"
l.each_cons(3) do |(d,m,y)|
	h = d.to_i
	if h > 0
		m = m.to_i
		if m >= 1 && m <= 12			
			
			y = y.length > 4 ? y[0..3].to_i : y.to_i
			d = d.length > 2 ? d[-2..-1].to_i : d.to_i

			if y >= 2013 && y <= 2015 && (d <= days_in_month(y,m))
				count["#{d.to_s.rjust(2,"0")}-#{m.to_s.rjust(2,"0")}-#{y}"] += 1
			end
		end 
	end	
end
max = count.values.max
# puts "#{count}"

puts count.detect{|k,v| v == max}[0]