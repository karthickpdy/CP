n,q = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
h = Hash.new("NO")
arr.each do |a|
	h[a] = "YES"
end
# puts "#{h}"
q.times do
	puts h[gets.to_i]
end
