k = gets.to_i
l = gets.to_i
i = k
count = 0
while i < l 
	i *= k
	count += 1
end
if i == l
	puts "YES"
	puts count
else
	puts "NO"
end
