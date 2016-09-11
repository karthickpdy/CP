def check_palindrome(s)
	
	n = s.length
	mid = n / 2
	first_half = s[0..mid-1]

	if n.even?
		ind = mid
	else
		ind = mid + 1 
	end


	second_half = s[ind..-1].reverse
	
	new_first_half = ""
	palindrome = true
	# puts "first #{first_half} second_half #{second_half}"
	
	(0..first_half.length-1).each do |i|
		if first_half[i] == second_half[i]
			if first_half[i] == '.' && second_half[i] == '.'
				new_first_half << 'a'				
			else
				new_first_half << first_half[i]
			end
		else
			if first_half[i] == '.'
				new_first_half << second_half[i]
			elsif second_half[i] == '.'
				new_first_half << first_half[i]
			else
				palindrome = false
				break
			end
		end
	end
	new_second_half = new_first_half.reverse

	if n.odd?
		mid_el = s[mid]		
		mid_el = 'a' if mid_el == '.'
		new_string = new_first_half + mid_el + new_second_half
	else	
		new_string = new_first_half + new_second_half
	end
	palindrome ? new_string : -1
end

t = gets.to_i
t.times do 
	s = gets.chomp
	puts check_palindrome(s)
end

