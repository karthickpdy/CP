n = gets.to_i
arr = []
count = Hash.new(0)

n.times do
	el = gets.split(" ").map(&:to_i).sort
	count[el] += 1
end

puts count.values.count{|x| x == 1}