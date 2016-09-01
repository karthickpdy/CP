n = gets.to_i
students = gets.split(" ").map(&:to_i)
gift = {1 => [], 2 => [] , 3 => []}
students.each_with_index do |s,i|
gift[s] << i + 1
end
# puts "#{gift}"
arr = []
gift.each { |k,v|
 arr << v.count
}
min_teams = arr.min
puts min_teams
(0..min_teams - 1).each { |i|
  puts "#{gift[1][i]} #{gift[2][i]} #{gift[3][i]}"
}
