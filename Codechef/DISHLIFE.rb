require 'set'

t = gets.to_i
t.times do
	n,k = gets.split(" ").map(&:to_i)
	s = Set.new
	some = false
	arr = []
	n.times do 
		arr << gets.split(" ").map(&:to_i)
	end
	if k > 10**3
		array = arr.sort_by{|a| a.uniq.length}.reverse
	else
		array = arr.sort_by{|a| a.uniq.length}
	end

	array.each do |a|		
	
		if s.length == k
			some = true
			break
		end
		
		a.each do |x|
			s << x
		end
	
	end

	if s.length == k
		puts some ? "some" : "all"
	else
		puts "sad"
	end
end