choices = {}
4.times do
	c,val = gets.chomp.split(".")
	# puts "#{c}, #{val}"
	choices[c] = val.length
end
	choices = Hash[*choices.sort_by {|k,v| v}.flatten]
	# puts "#{choices}"
	choice = nil
	if 2 * choices.values[0] <=  choices.values[1]
		choice = choices.key(choices.values[0])
	end

	if choices.values[-1] >= 2 * choices.values[-2]
		val = choices.key(choices.values[-1])
		if val
			choice = (choice ? nil : val)
		end
	end
	
	choice = "C" unless choice
	puts choice
