def redundant(exp)
        	i = 0
	stack = []
	exp.each_char do |c|
		if(c == "(")
			stack << 0
		elsif c == ')'
			x = stack.pop 
			return 1 if x == 0 || x == 1
		else
			if(stack[-1])
				stack[-1] += 1
			else
				stack << 1
			end
		end				
	end
	x = stack.pop
	x == 0 || x == 1 ? 1 : 0
end

puts redundant("(a)")
puts redundant("(a+b)")
puts redundant("((a+b)*b)")
puts redundant("(a*(a+b))")
puts redundant("((a+b))")
puts redundant("((a+b)+(a*b)*b)")
puts redundant("(((a+b)+(a*b)*b))")
puts redundant("a+b")