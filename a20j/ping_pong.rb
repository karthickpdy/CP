

def dfs(i)
	@visited[i] =  true
	@arr.each_with_index do |a,k|
		if @visited[k]
			next
			#@arr[i][0]-a,@arr[i][1]- b, a[0] - c,a[1] - d
		elsif a[0] < @arr[i][0] && @arr[i][0] < a[1]
			dfs(k)
		elsif a[0] < @arr[i][1] && @arr[i][1] < a[1]
			dfs(k)
		end
	end	
end


n = gets.to_i
@arr = []
n.times do
	m,a,b = gets.split(" ").map(&:to_i)
	if m == 1
		@arr << [a,b]
	else
		@visited = Hash.new(false)
		dfs(a-1)
		if @visited[b-1]
			puts "YES"
		else
			puts "NO"
		end
	end
end