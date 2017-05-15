arr = gets.split(" ").map(&:to_i)


# if sum >=3
# 	min,min_ind = arr.each_with_index.min
# 	arr.delete_at(min_ind)
# 	arr = arr.map{|e| e - min}
# 	ans = min
# 	sum = arr.inject(0,:+) 
# 	if sum >= 3 
# 		max = arr.max
# 		pair =  max / 2
# 		min = arr.min
# 		if pair <= min
# 			ans += pair
# 			if pair % 2 != 0
# 				min -= pair
# 				ans += 1 if min >= 2
# 			end
# 		else
# 			ans += min
# 		end

# 	end
# end
# arr = []
# ac2 = a/2
# bc2 = b/2
# cc2 = c/2
# # 0 2 1
# arr << [bc2,c].min
# # 0 1 2
# arr <<  b + cc2 
# # 1 1 1
# arr << a + b + c
# # 1 2 0
# # 1 0 2
# puts ans
#  66,
#  34,23

arr.sort!
if((2 * (arr[0] + arr[1])) <= arr[2])
	puts arr[0] + arr[1]
else
	puts arr.inject(0,:+) / 3
end