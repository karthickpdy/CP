def cycle(i)
	@cycle_arr << i+1
	if @visited[i]
		return 
	end
	@visited[i] =  true
	cycle(@arr[i]-1)
end

n = gets.to_i
@arr = gets.split(" ").map(&:to_i)
@visited = Hash.new(false)

@cycles = []
(1..n).each do |a|
	@cycle_arr = []
	unless @visited[a-1]
		cycle(a-1)
		@cycles << @cycle_arr
	end
end
puts @cycles.length
@cycles.each do |c|
	puts c.join(' ')
end