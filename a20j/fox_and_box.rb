n = gets.to_i
arr = gets.split(" ").map(&:to_i).sort.reverse
curr_strength = 0
piles = 0
count = Hash.new(0)
arr.each do |a|
	count[a] += 1
end

# arr.each do |a|
# 	puts "here #{curr_strength} #{a}"
# 	if curr_strength == 0
# 		piles += 1 
# 		curr_strength = a
# 	else
# 		curr_strength = [curr_strength - 1,a].min
# 	end
# end
puts count.values.max

# 10,2,2,1
# 1,1
# 1,0