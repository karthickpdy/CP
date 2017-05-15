n,k = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
m = n/k
k_list = []
(0..((n/m)-1)).each do |i|
	k_list << (i..(n-1)).step(k).to_a
end
sum = []
k_list.each do |a|
	sum << a.inject(0){|s,x| s += arr[x]}	
end
# puts "#{sum}"
min,min_ind = sum.each_with_index.min
puts k_list[min_ind][0]+1