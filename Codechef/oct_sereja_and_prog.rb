n,k,d = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
sentinel = -3*(10**9)

puts "0 1"
# k = k > 20 ? 20 : k

# k.times do |i|
# 	min,min_ind = arr[i..(n-1)].each_with_index.min
# 	min_ind += i
# 	arr[i],arr[min_ind] = arr[min_ind],arr[i]
# 	puts "1 #{i+1} #{min_ind+1}" if i != min_ind
# end

# d = d > 100 ? 100 : d
# d.times do
# 	max,max_ind = arr.each_with_index.max
# 	arr[max_ind] = sentinel
# 	puts "2 #{max_ind + 1}" if arr[max_ind]
# end

new_arr = arr.each_with_index.sort

k.times do |i|
	curr_ind,old_ind = i,new_arr[i][1]
	puts "1 #{curr_ind+1} #{old_ind+1}" if curr_ind != old_ind
end

max_ind = new_arr.length - 1
d.times do 
	puts "2 #{max_ind + 1}" if arr[max_ind]
	max_ind -= 1
end
# puts "#{new_arr}"

# puts "#{arr}"
puts "-1"
# All positive
#[1,2,3,5]

#All Neg
#[-1,-2,-3]

#Mixed
#[1,2,3,-1,-2,-3]