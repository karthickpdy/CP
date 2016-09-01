def lucky(n)
  n.to_s =~ /^[47]*$/
end
n = gets.chomp.to_i
almost = false
(1..n).each do|a|
  almost = true if lucky(a) and n % a == 0
end
puts almost ? "YES" : "NO"