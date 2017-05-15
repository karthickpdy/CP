n = gets.to_i
arr = []

def dfs(start,array,n)
	return if @visited[start]
	
	@visited[start] = true

	(0...n).each do |i|
		if !@visited[i] && (array[i][0] == array[start][0] || array[i][1] == array[start][1])
			# puts "here"
			dfs(i,array,n)
		end
	end
end
n.times do 
	arr << gets.split(" ").map(&:to_i)
end

@visited = Hash.new(false)
comp = 0
(0...n).each do |i|
	 unless @visited[i]
	 	comp += 1
	 	dfs(i,arr,n)
	 end
end
puts comp-1