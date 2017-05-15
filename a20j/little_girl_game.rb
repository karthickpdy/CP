s = gets.chomp
char_count = Hash.new(0)
s.each_char do |c|
	char_count[c] += 1
end
odd_count = char_count.values.count{|a| a.odd? }
if odd_count == 1 || odd_count == 0
	first = true
elsif s.length % 2 == 0
	first = false
else
	first = true
end
puts first ? "First" : "Second"