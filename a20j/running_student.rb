def dist(x1,y1,x2,y2)
	Math.sqrt(((x2-x1)**2) + ((y2-y1)**2))
end

n,v_b,v_s = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
univ_x,univ_y = gets.split(" ").map(&:to_i)

ans = {}

arr[1..-1].each_with_index do |a,i|
	bus_time = a/v_b.to_f
	# puts "h33 #{bus_time}"
	walk_time = (dist(univ_x,univ_y,a,0))/v_s
	# puts "#{[bus_time + walk_time,walk_time]}"
	ans[[bus_time + walk_time,walk_time]] = i

end
# puts "#{ans}"

key = ans.keys.min

puts "#{ans[key]+2}"