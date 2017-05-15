p,q,l,r = gets.split(" ").map(&:to_i)
first = []
second = []
p.times do
	x,y = gets.split(" ").map(&:to_i)
	first << (x..y).to_a
end
first.flatten!

q.times do
	x,y = gets.split(" ").map(&:to_i)
	second << (x..y).to_a
end
second.flatten!
# puts "first #{first}"
# puts "sec #{second}"
count = 0
(l..r).each do |i|
	count += 1 unless (first & second.map{|a| a + i}).empty?
end
puts count

# Good - First try intersection trick