def reverse_signs(s)
	case s
	when ">="
		return "<"
	when ">"
		return "<="
	when "<"
		return ">="
	when "<="
		return ">"							
	end

end

def calc(s,no,start,finish)
	case s
	when ">="
		start = no if no > start
	when ">"
		start = no + 1 if no + 1 > start
	when "<"
		finish = no - 1 if no - 1 < finish
	when "<="
		finish = no	if no < finish
	end
	return start,finish
end


n = gets.to_i
start = -(10 ** 9) * 2
finish = (10 ** 9) * 2

n.times do
	s,no,ans = gets.split(" ")
	no = no.to_i
	# puts "#{s},#{no},#{ans}"
	if ans == "Y"
		# puts "here"
		start,finish =  calc(s,no,start,finish)
		# puts "#{start},#{finish}"
	else
		start,finish =  calc(reverse_signs(s),no,start,finish)
	end
end
# puts start
# puts finish
if start <= finish
	puts "#{start}"
else
	puts "Impossible"
end