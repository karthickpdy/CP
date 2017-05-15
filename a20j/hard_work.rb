arr = []
3.times do
	arr << gets.chomp.tr("-;_","").downcase
end
list = arr.permutation(3).map{|a| a.inject("",&:concat)}
# puts "#{list}"
n = gets.to_i
n.times do
	s = gets.chomp.tr("-;_","").downcase
	puts list.include?(s) ? "ACC" : "WA"
end