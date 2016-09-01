arr = []
i = 0
j = 0
5.times {
  arr.push(gets.split(" ").map(&:to_i))
}
arr.each_with_index do |row,i_ind|
  val = row.index(1)
  i = i_ind and j = val if val
end
puts (i - 2).abs + (2 - j ).abs