# require "Benchmark/ips"
n = gets.to_i
arr = []
n.times do
	arr << gets.split(" ").map(&:to_i)
end

arr.sort!#_by!{|x| [x[0],-x[1]]}

count = 0
max  = -1
# Benchmark.ips do |x|
# 	x.report("arr map") do
# 		arr.map(&:last).each do |a|
			
# 			if a < max
# 				count += 1
# 			else
# 				max = a
# 			end
# 		end
# 	end

# 	x.report("arr each") do
		arr.each do |a|
			
			if a[1] < max
				count += 1
			else
				max = a[1]
			end
		end
# 	end
#  x.compare!
# end


puts count

# Benchmark.ips do |x|
# x.report("loop"){
# 100.times{|a| a+1}	
# }
# x.report("basic"){
# 1+1
# }
# x.compare!
# end