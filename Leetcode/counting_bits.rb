# https://leetcode.com/problems/counting-bits/




# @param {Integer} num
# @return {Integer[]}
# def count_bits(num)
#     (0..num).map { |i| 
#     	count = 0
# 		while i > 0
# 			i = i & (i-1)
# 			count += 1
# 		end
# 		count
# 	 }
# end

#Fastest

def count_bits(num)
    (1..num).each_with_object([0]) do |i,arr|	
		count = (i % 2 == 0 ? 0 : 1) + arr[i/2]				
    	arr << count
    end
end


n = gets.to_i
count_bits(n)