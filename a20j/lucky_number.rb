def generate_lucky(i,n,arr)
	if i >= n
		@no_list << arr
		return
	end

	four_count = arr.count("4")
	seven_count = arr.count("7")
	expected = n/2

	if four_count < expected
		arr[i] = "4"
		generate_lucky(i+1,n,arr.dup)
	end

	if seven_count < expected
		arr[i] = "7"
		generate_lucky(i+1,n,arr.dup)
	end
end


@no_list = []
# generate_lucky(0,2,"")
# generate_lucky(0,4,"")

n = gets.to_i

l = n.to_s.length

if l.odd?
	generate_lucky(0,l+1,"")
else 
	generate_lucky(0,l,"")
	generate_lucky(0,l+2,"")
end

@no_list = @no_list.map(&:to_i)
@no_list.sort!
ans = @no_list.detect { |e| e >= n  }
puts ans


#Good - Nice clean recursive implementation for generating the lucky numbers.