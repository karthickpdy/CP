n = gets.to_i
arr = gets.split("")
l_index = arr.index("L")
r_index = arr.index("R")
l_last_index = arr.rindex("L")
r_last_index = arr.rindex("R")

ans = false

unless l_index
	s,t = r_index,r_last_index+1
	ans = true
end

unless r_index
	s,t = l_last_index,l_index - 1
	ans = true
end

if !ans	
	s,t = r_index,r_last_index
end

puts "#{s+1} #{t+1}"