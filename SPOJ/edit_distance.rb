
# def levenshtein_distance(s, t)
#   m = s.length
#   n = t.length
#   return m if n == 0
#   return n if m == 0
#   d = Array.new(m+1) {Array.new(n+1)}

#   (0..m).each {|i| d[i][0] = i}
#   (0..n).each {|j| d[0][j] = j}
#   (1..n).each do |j|
#     (1..m).each do |i|
#       d[i][j] = if s[i-1] == t[j-1]  # adjust index into string
#                   d[i-1][j-1]       # no operation required
#                 else
#                   [ d[i-1][j]+1,    # deletion
#                     d[i][j-1]+1,    # insertion
#                     d[i-1][j-1]+1,  # substitution
#                   ].min
#                 end
#     end
#   end
#   d[m][n]
# end

def edit_distance(a,b,m,n)
	dp = Array.new(a.length)
	(0..m).each do |i|
		dp[i] = Array.new(b.length)
		(0..n).each do |j|
			if i == 0
				dp[i][j] = j
			elsif j == 0
				dp[i][j] = i
			elsif a[i-1] == b[j-1]
				dp[i][j] = dp[i-1][j-1]
			else
				dp[i][j] = 1 + [dp[i][j-1],dp[i-1][j],dp[i-1][j-1]].min
			end										
		end
	end
	dp[a.length][b.length]
end

# def edit_distance(a,b,m,n)
# 	one = Array.new(a.length)
# 	two = Array.new(a.length)

# 	(0..m).each do |i|
# 		two = []
# 		(0..n).each do |j|
# 			if i == 0
# 				two[j] = j
# 			elsif j == 0
# 				two[j] = i
# 			elsif a[i-1] == b[j-1]
# 				two[j] = one[j-1]
# 			else
# 				two[j] = 1 + [two[j-1],one[j],one[j-1]].min
# 			end										
# 		end
# 		one = two.dup
# 	end
# 	two[b.length]
# end

t = gets.to_i
t.times do 
	a = gets.chomp
	b = gets.chomp
	puts edit_distance(a,b,a.length,b.length)
end