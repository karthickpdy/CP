
def get_score(count)
	case count
	when 4
		1
	when 5
		2
	when 6
		4	
	end
end

def calculate_score(n,arr)
	score = n

	cookie_type = Array.new(6,0)
	arr.each do |a|
		cookie_type[a-1] += 1
	end
	while 1		
		rem = cookie_type.count{|a| a != 0}
		break if rem < 4
		score += get_score(rem)
		cookie_type.map!{|a| 
			a -= 1 if a != 0
			a
		}
	end
	# puts score
	score
end



t = gets.to_i
t.times do 
	p = gets.to_i
	score_arr = []
	p.times do 
		input = gets.split(" ").map(&:to_i)
		n = input[0]
		arr = input[1..-1]
		score_arr << calculate_score(n,arr)
	end
	max_score = score_arr.max
	winner = score_arr.index(max_score)
	if score_arr.count(max_score) > 1
		ans = "tie"
	elsif winner == 0
		ans = "chef"
	else
		ans = winner + 1
	end
	puts ans	
end

# 1
# 2
# 16 1 1 2 2 3 3 3 4 4 4 5 5 5 6 6 6
# 14 1 1 2 2 3 3 4 4 4 5 5 5 6 6