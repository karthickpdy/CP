n,m = gets.split(" ").map(&:to_i)
comp = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)

dummy = Hash.new(0)
arr.each do |a|
	dummy[a] += 1 
end
ans = 0
count = {}.merge!(dummy)
# puts "#{count}"
comp.each do |c|
	key = c if count[c] && count[c] != 0
	key ||= count.keys.detect{|x|  x > c && count[x] != 0}
	# puts "key #{key}"
	if key
		count[key] -= 1
	else
		ans += 1
	end
end

puts ans