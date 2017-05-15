n = gets.to_i
arr = gets.split(" ").map(&:to_i)
l = arr.min
r = [arr[0],arr[-1]].min

avail = Array.new(n,true)
ans = nil
finish = false
(l..r).each do |i|
	# puts "i #{i} #{avail}"
	ans = i
	arr.each_with_index do |a,j|
		# puts "a #{a}"
		avail[j] = false if a == i
		if avail[j] == false && avail[j] == avail[j-1] && j > 0 
			finish = true
			break 
		end
	end
	break if finish
end
puts ans