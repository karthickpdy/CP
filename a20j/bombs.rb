n = gets.to_i
STR = "1 %{v} %{dir}"
TWO = "2"
THREE = "3"

def get_ans(x1,y1,x2,y2)

end

arr = []
length = 0
n.times do
	x,y = gets.split(" ").map(&:to_i)
	length += 2
	length += 2 if x != 0
	length += 2 if y != 0
	arr << [x,y]
end
arr.sort!

ans = []
puts "#{length}"
arr.each do |a|
	x1,y1,x2,y2 = 0,0,a[0],a[1]

	if x1 != x2
		puts  STR % {:v => (x1-x2).abs, :dir => (x1 > x2 ? 'L' : 'R')}
	end
	if y1 != y2
		puts STR % {:v => (y1-y2).abs, :dir => y1 > y2 ? 'D' : 'U'}
	end

	puts TWO

	x1,y1,x2,y2 = a[0],a[1],0,0

	if x1 != x2
		puts  STR % {:v => (x1-x2).abs, :dir => (x1 > x2 ? 'L' : 'R')}
	end
	if y1 != y2
		puts STR % {:v => (y1-y2).abs, :dir => y1 > y2 ? 'D' : 'U'}
	end
	
	puts THREE
end




# n = gets.to_i
# STR = "1 %{v} %{dir}"
# TWO = "2"
# THREE = "3"

# def get_ans(x1,y1,x2,y2)
# 	ans = []
# 	if x1 != x2
# 		ans <<  STR % {:v => (x1-x2).abs, :dir => (x1 > x2 ? 'L' : 'R')}
# 	end
# 	if y1 != y2
# 		ans << STR % {:v => (y1-y2).abs, :dir => y1 > y2 ? 'D' : 'U'}
# 	end
# 	ans
# end

# arr = []
# n.times do
# 	arr << gets.split(" ").map(&:to_i)
# end
# arr.sort!

# ans = []

# arr.each do |a|
# 	ans << get_ans(0,0,a[0],a[1])	
# 	ans << TWO
# 	ans << get_ans(a[0],a[1],0,0)
# 	ans << THREE
# end
# ans.flatten!
# puts ans.length
# puts ans.join("\n")



# n = gets.to_i

# def get_ans(x1,y1,x2,y2)

# end

# arr = []
# n.times do
# 	arr << gets.split(" ").map(&:to_i)
# end
# arr.sort!

# ans = []

# arr.each do |a|

# 	x1,y1,x2,y2 = 0,0,a[0],a[1]

# 	vals = []
# 	if x1 != x2
# 		vals << "1 #{(x1-x2).abs} #{x1 > x2 ? 'L' : 'R'}"
# 	end
# 	if y1 != y2
# 		vals << "1 #{(y1-y2).abs} #{y1 > y2 ? 'D' : 'U'}"
# 	end
	
# 	ans << vals
	
# 	ans << "2"
	
# 	x1,y1,x2,y2 = a[0],a[1],0,0

# 	vals = []
# 	if x1 != x2
# 		vals << "1 #{(x1-x2).abs} #{x1 > x2 ? 'L' : 'R'}"
# 	end
# 	if y1 != y2
# 		vals << "1 #{(y1-y2).abs} #{y1 > y2 ? 'D' : 'U'}"
# 	end
	
# 	ans << vals
# 	ans << "3"
# end
# ans.flatten!
# puts ans.length
# puts ans.join("\n")