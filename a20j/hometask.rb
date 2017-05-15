n = gets.to_i
arr = gets.split(" ").map(&:to_i).sort.reverse
ans = nil
if arr.include?(0)
	sum = arr.inject(0,:+)
	if sum % 3 == 0
		ans = arr.join("")
	elsif sum % 3 == 1
		
		one = [1,4,7]
		two = [2,5,8]
		l = nil
		one.each do |o|
			l = arr.rindex(o)
			if l
				arr.delete_at(l)
				break
			end
		end

		unless l
			deleted = 0
			two.each do |t|
				l = arr.rindex(t)
				if l 
					if deleted == 0
						l1 = arr.index(t)
						if l == l1
							arr.delete_at(l)
							deleted = 1
							next
						else
							arr.delete_at(l)
							arr.delete_at(l1)
							break
						end
					end

					if deleted == 1
						arr.delete_at(l)
					end

				end
			end
		end

		# j = arr.length - 1
		# while j >= 0
		# 	a = arr[j]
			
		# 	if a % 3 == 1 && one.length < 1
		# 		one << j 
		# 		break
		# 	end
			
		# 	if a % 3 == 2  && two.length < 2
		# 		two << j
		# 	end
		# 	j -= 1			
		# end
		# if one.empty?
		# 	arr.delete_at(two[0])
		# 	arr.delete_at(two[1])
		# else
		# 	arr.delete_at(one[0])
		# end


		# puts "here"
		# l = arr.rindex{|a| a % 3 == 1}
		# if l
		# 	arr.delete_at(l)
		# else
		# 	l = arr.rindex{|a| a % 3 == 2}
		# 	arr.delete_at(l)
		# 	l = arr.rindex{|a| a % 3 == 2}
		# 	arr.delete_at(l)
		# end
	else

		
		one = [1,4,7]
		two = [2,5,8]
		l = nil
		two.each do |o|
			l = arr.rindex(o)
			if l
				arr.delete_at(l)
				break
			end
		end

		unless l
			deleted = 0
			one.each do |t|
				l = arr.rindex(t)
				if l 
					if deleted == 0
						l1 = arr.index(t)
						if l == l1
							arr.delete_at(l)
							deleted = 1
							next
						else
							arr.delete_at(l)
							arr.delete_at(l1)
							break
						end
					end

					if deleted == 1
						arr.delete_at(l)
					end

				end
			end
		end


		# one = [1,4,7]
		# two = [2,5,8]
		# j = arr.length - 1
		# while j >= 0
		# 	a = arr[j]
			
		# 	if a % 3 == 2 && two.length < 1
		# 		two << j 
		# 		break
		# 	end
			
		# 	if a % 3 == 1  && one.length < 2
		# 		one << j
		# 	end
		# 	j -= 1			
		# end
		# if two.empty?
		# 	arr.delete_at(one[0])
		# 	arr.delete_at(one[1])
		# else
		# 	arr.delete_at(two[0])
		# end


		# l = arr.rindex{|a| a % 3 == 2}
		# if l
		# 	arr.delete_at(l)
		# else
		# 	l = arr.rindex{|a| a % 3 == 1}
		# 	arr.delete_at(l)
		# 	l = arr.rindex{|a| a % 3 == 1}
		# 	arr.delete_at(l)
		# end
	end
	ans = arr.join("")
	unless /[^0]/ =~ ans
		puts "0"
	else
		puts ans
	end
else
	puts "-1"
end