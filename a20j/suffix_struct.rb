def subs?(s,t)
	i = j = 0
	while i < s.length && j < t.length
		j += 1 if s[i] == t[j]
		i += 1
	end
	j == t.length
end

s = gets.chomp
t = gets.chomp


source_count = Hash.new(0)
s.each_char do |c|
	source_count[c] += 1
end

target_count = Hash.new(0)
t.each_char do |c|
	target_count[c] += 1
end

result = true
target_count.each_key do |k|
	if !source_count[k] || source_count[k] < target_count[k]
		result = false
		break
	end
end

ans = "need tree"
if result
	if s.length == t.length
		ans = "array"
	elsif subs?(s,t)
		ans = "automaton"
	else
		ans = "both"
	end
end

puts ans