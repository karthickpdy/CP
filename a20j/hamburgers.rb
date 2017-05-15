
recipe = gets.chomp
has = Hash.new(0)
price = Hash.new(0)

has['B'],has['S'],has['C'] =  gets.split(" ").map(&:to_i)
price['B'],price['S'],price['C'] =  gets.split(" ").map(&:to_i)

ruby = gets.to_i


cost = 0
count = Hash.new(0)
recipe.each_char do |a|
	cost += price[a]
	count[a] += 1
end

possible = {}
count.each_key do |a|
	possible[a] = has[a] / count[a]
end

min,max = possible.values.minmax
required_cost = nil
# puts "min #{min} max #{max} coutn #{count}"
while min < max
	mid = min + ((max-min)+1)/2

	needed_cost = 0

	count.each_key do |a|
		mid_count = count[a] * mid
		if mid_count > has[a]
			needed_cost += (mid_count - has[a]) * price[a]
		end
	end

	if needed_cost <= ruby # purchasing things amount should be less than ruby
		required_cost = needed_cost
		min = mid
	else
		max = mid - 1
	end
end
# puts "min #{min} max #{max} req #{required_cost}"
# puts "cost #{cost}"
# puts "count #{count}"

if required_cost
	ruby -= required_cost 
end
ans = max

qty = ruby / cost
spent = cost * qty
# puts "qt #{qty}"
ans += qty

ruby -= spent

remaining_cost = 0

count.each_key do |a|
	rem = 0
	rem = has[a] % (count[a] * max) if (has[a] >= count[a] * max) && (count[a] * max) > 0
	remaining_cost += (count[a] - rem) * price[a]
end
# puts "ruby #{ruby} rem #{remaining_cost} count #{count}"
if remaining_cost > 0 && ruby >= remaining_cost
	ans += 1
end

puts ans