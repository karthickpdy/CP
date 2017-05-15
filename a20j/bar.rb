drinks = ["ABSINTH","BEER","BRANDY","CHAMPAGNE","GIN","RUM","SAKE","TEQUILA", "VODKA","WHISKEY", "WINE"]
n = gets.to_i
count = 0
n.times do |i|
	line = gets.chomp.upcase

	age = line.to_i unless line =~ /[A-Z]/
	# puts line
	count += 1 if ((age && age < 18) || drinks.include?(line) ) 
	# puts "count #{count}"
end
puts count