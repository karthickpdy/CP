n = gets.to_i
arr = gets.split(" ").map(&:to_i)
h = {}
arr.each_with_index { |a,i|
  h[a] = i + 1
}
for i in (1..n)
  puts h[i]
end