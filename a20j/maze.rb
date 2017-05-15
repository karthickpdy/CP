def dfs(arr,i,j,n,m)
	# puts "#{i} #{j} #{n} #{m}"
	return if i < 0 || i >= n || j < 0 || j >= m	
	return if arr[i][j] != '.' || @visited[i][j] || @limit == 0
	@visited[i][j] = true
	@limit -= 1

	dfs(arr,i+1,j,n,m) if i+1 >= 0 || i+1 < n  && !@visited[i+1][j]
	dfs(arr,i-1,j,n,m) if i-1 >= 0 || i-1 < n  && !@visited[i-1][j]
	dfs(arr,i,j+1,n,m) if j+1 >= 0 || j+1 < m && !@visited[i][j+1]
	dfs(arr,i,j-1,n,m) if j-1 >= 0 || j-1 < m && !@visited[i][j-1]
end

n,m,k = gets.split(" ").map(&:to_i)
arr = []
@visited = []
free_cells = 0
n.times do
	arr << gets.chomp.split("")
	free_cells += arr[-1].count(".")
	@visited << Array.new(m,false)
end

unless k == 0	
@limit = free_cells - k
# puts "#{@limit}" if k == 16079
(0...n).each do |i|
	(0...m).each do |j|
		dfs(arr,i,j,n,m) if arr[i][j] == "." && !@visited[i][j]
	end
end
(0...n).each do |i|
	(0...m).each do |j|
		if arr[i][j] == "." && @visited[i][j] == false && k > 0
			arr[i][j] = "X"
			k -= 1
		end
		break if k == 0
	end
	break if k == 0
end
end

arr.each do |a|
	puts a.join('')
end