h,m = gets.split(":").map { |e| e.chomp.sub(/^[0]*/,"") }

h = "0" if h == ""
m = "0" if m == ""
valid_h = (("0".."9").to_a + ("A".."N").to_a)


def get_val(c)
	if ("A".."Z").include?(c)
		base = c.ord - "A".ord + 10
	else
		base = c.to_i
	end
end
# puts "#{h.length} #{m.length}"
if h.length == 1 && m.length == 1
	# puts "#{valid_h}"
	if valid_h.include?(h)
		puts -1		
	else
		puts 0
	end		
else
	valid_base = -1
	
	(h.chars + m.chars).each do |c|
		z = get_val(c) + 1
		# puts "#{z}"
		valid_base = z if z > valid_base
	end

	# puts "h343"
	# puts "valid #{valid_base}"
	bases = []

	(valid_base..60).each do |b|
		hours = 0
		l = h.length
		h.each_char.with_index do |c,i|
			# puts "#{get_val(c) * (b**i)}"
			hours += get_val(c) * (b**(l-i-1))
		end

		mins = 0
		l = m.length
		m.each_char.with_index do |c,i|				
			# puts "val #{get_val(c) * (b**i)}"
			mins += get_val(c) * (b**(l-i-1))
		end
		# puts "#{b} #{hours} #{mins}"
		if hours >= 0 && hours < 24 && mins >= 0 && mins < 60 
			bases << b
		end
	end

	if bases.empty?
		puts "0"
	else
		puts bases.join(" ")
	end
end
