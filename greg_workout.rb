gets
arr = gets.split(" ").map(&:to_i)
ex = [0,0,0]
arr.each_slice(3) do |slice|
   ex[0] += slice[0] || 0
   ex[1] += slice[1] || 0
   ex[2] += slice[2] || 0
end
val = ex.each_with_index.max
puts ["chest","biceps","back"][val[1]]