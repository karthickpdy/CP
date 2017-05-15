# t = gets.to_i
# sums = []
# t.times do 
# 	s = gets.chomp
# 	position = []
# 	s.each_char.with_index do |c,i|
# 		position << i if c == '1'
# 	end
#     position << s.length
# 	move = true
#     sum = 0
#     last_move = final_move = position.length
#     while move  
#         move = false
        

# 	    (0...(position.length-1)).each do |i|            
#             break if i > final_move
# 	    	curr = position[i]
# 	    	diff = position[i + 1] - position[i] - 1
# 	    	if diff >= 1
# 	    		move = true                
# 	    		position[i] = position[i] + diff
# 	    		# sum += diff + 1
#                 last_move = i
# 	    	end
# 	    end

#         final_move = last_move

# 	end
# 	sums << sum
# end

# puts sums.join("\n")

t = gets.to_i
sums = []
t.times do 
    s = gets.chomp
    chunk = s.split("").chunk{|x| x}.to_a
    i = 0
    moves = 0
    ones = 0
    while i < chunk.length - 1
        curr = chunk[i]
        if curr[0] == '1'
            if chunk[i+1][0] == '0'
                ones += curr[1].length
                zero = chunk[i+1][1].length
                moves += ones * zero + ones
                i += 1
            end
        end

        i += 1
    end
    puts moves
end


