a = gets.to_i
b = gets.to_i
c = (a + b).to_s.gsub("0","").to_i
a1 = a.to_s.gsub("0","").to_i
b1 = b.to_s.gsub("0","").to_i
c1 = a1 + b1

puts c == c1 ? "YES" : "NO"
