n = gets.to_i
arr =gets.split(" ").map(&:to_i)
prev = arr[0]
seg = nil
seg_start = nil
seg_end = nil
ans = true
seg_found = false
(1..n-1).each do |i|
	if arr[i] >= prev		
		if seg
			seg = nil
			seg_end = i - 1
		end
	else
		unless seg
			seg = true
			seg_found = true
			seg_start = i - 1
		end
	end
	prev = arr[i]
end
if seg_found
	seg_end = n - 1 if !seg_end && seg && seg_start
	# puts "#{seg_start} #{seg_end}"
	first_part = arr[0..seg_start - 1] unless seg_start == 0
	last_part = arr[seg_end+1..n-1]
	mid_part = arr[seg_start..seg_end].reverse if arr[seg_start..seg_end]
	new_arr =  (first_part || [] )+ (mid_part || []) +  (last_part ||  [])
	# puts "#{first_part} #{arr[seg_start..seg_end].reverse} #{arr[seg_end+1..n-1]}"
	ans = false unless  new_arr == arr.sort
else
	if arr == arr.sort
		seg_start = 0
		seg_end = 0
	else
		ans = false 
	end
end

if ans
	puts "yes"
	puts "#{seg_start+1} #{seg_end+1}"
else
	puts "no"
end
