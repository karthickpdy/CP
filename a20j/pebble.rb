n,k = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
# col = arr.map{|a| a/k}
a,b = arr.minmax
# puts "#{col.minmax}"
ans = true
ans = false if b  - a > k
col_arr = (1..k).to_a

x = (100 / k.to_f).ceil
col_arr *= x
# puts "#{col_arr.length}"
if ans
	puts "YES"
	arr.each do |a|
		puts col_arr[0..(a-1)].join(" ")
	end
else
	puts "NO"
end
#