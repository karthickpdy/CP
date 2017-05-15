n = gets.to_i
count = Hash.new(0)
n.times do
	count[gets.chomp] += 1
end
q = gets.to_i
q.times do
	puts count[gets.chomp]
end