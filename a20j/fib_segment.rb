n = gets.to_i
arr = gets.split(" ").map(&:to_i)
seg = arr[0..1].length
max_seg = seg
if n > 1
	(2..(n-1)).each do |i|
		# puts "#{a == arr[i-2] + arr[i-1] }"
		if arr[i] == arr[i-2] + arr[i-1] 
			# puts "here"
			if seg == 0
				seg = 3
			else
				seg += 1
			end
			max_seg = seg if seg > max_seg
		else
			seg = 0
		end
	end
end
puts max_seg
# 16
# 1 1 1 2 3 5 8 1 1 1 2 3 5 8 13 21