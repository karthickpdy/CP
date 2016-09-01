situation = gets.chomp
current_count = 0
current_number = situation[0]
dangerous = false

situation.each_char do |s|
	if current_number == s
		current_count += 1
	else
		current_count = 1
	end
	current_number = s
	dangerous = true and break if current_count >= 7
end
if dangerous
	puts "YES"
else
	puts "NO"
end