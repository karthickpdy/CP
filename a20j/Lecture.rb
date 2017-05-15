n,m = gets.split(" ").map(&:to_i)
words = {}
m.times do
	a,b = gets.split(" ")
	words[a] =  b
end
lec = gets.split(" ")
op = []
lec.each do |a|
	if a.length > words[a].length
		op << words[a]
	else
		op << a
	end
end

puts op.join(" ")