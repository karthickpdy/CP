arr = gets.chomp.split("").each_with_index.collect{|e,i| i+1 if e.to_i == 1}.compact
m = gets.to_i
l = arr.length
if m == 1 
	if l >= 1
		puts "YES"
		puts arr.first
	else
		puts "NO"
	end
else
	if l <= 1
		puts "NO"
	else	
		i = 
		ans << arr[-2]
		ans << arr[-1]
		
		left_pan = arr[-2]
		right_pan = arr[-1]

		left = true

		(m-2).times do
			if left
				right_pan - left_pan
			else
			end
			i = arr.rindex{|x| x > diff && x  }	
			ans << arr[i]

			left = !left
		end
		puts "YES"
		puts ans.join(" ")
	end
end
		
# 
# 