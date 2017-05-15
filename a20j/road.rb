require "Set"

n,m = gets.split(" ").map(&:to_i)
not_connecting = Set.new
not_connecting_pair = []
m.times do
	a,b = gets.split(" ").map(&:to_i)
	not_connecting.add(a)
	not_connecting.add(b)
	not_connecting_pair << [a,b]
end
candidate = (1..n).to_a - not_connecting.to_a
node = candidate.first

puts n - 1
(1..n).each do |i|
	puts "#{node} #{i}" if node != i
end

#Good - https://en.wikipedia.org/wiki/Star_(graph_theory)