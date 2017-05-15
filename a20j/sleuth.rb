s = gets.chomp.downcase.gsub(/[^a-z]/,'')
ans = false
ans = true if ['a','e','i','o','u','y'].include?(s[-1])
puts ans ? "YES" : "NO"
# 