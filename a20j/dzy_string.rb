s = gets.chomp
k = gets.to_i
arr = gets.split(" ").map(&:to_i)

ans = 0 
s.each_char.with_index  do |c,i|
	weight = arr[c.ord - 97]
	ans += weight * (i +1)
end
sum = ((s.length+1)..(s.length+k)).inject(0,&:+)
ans +=  sum * arr.max
puts ans
# 