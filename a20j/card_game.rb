trump = gets.chomp
first,second = gets.split(" ")
ranks = ["6","7","8","9","T","J","Q","K","A"]
ans = false
if first[1] == second[1]
	ans = true if ranks.index(first[0]) > ranks.index(second[0])
else
	ans = true if first[1] == trump
end
puts ans ? "YES" : "NO"