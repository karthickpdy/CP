n = gets.to_i
laptops = []
res = false
n.times {
  laptops << gets.split(" ").map(&:to_i)
}
laptops.sort! do |a,b|
  a[0] <=> b[0]
end
(0..n-2).each do |i|
  res = true if laptops[i][1] > laptops[i+1][1]
end

puts res ? "Happy Alex" : "Poor Alex"