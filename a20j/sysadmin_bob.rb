s = gets.chomp
arr = s.split("@")
at_count = s.count("@")
ans = ""
if arr.length >= 2 && (arr[1..-2].all?{|e| e.length > 1} && arr[0].length > 0 && arr[-1].length > 0)
	ans << arr[0] + "@"
	at_count -= 1 
	arr[1..-2].each do |a|
		ans << "#{a[0]},#{a[1..-1]}@"
		at_count -= 1
	end
	if at_count != 0
		puts "No solution"
	else
		puts ans+arr[-1]
	end
else
	puts "No solution"
end