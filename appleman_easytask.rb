n = gets.to_i
matrix = []
n.times{
  matrix << gets.chomp.split("")
}
res = true
matrix.each_with_index do |row,i|
  row.each_with_index do |ele,j|
    adj_arr = []
    adj_arr << matrix[i+1][j] if matrix[i +1]
    adj_arr << matrix[i-1][j] if i-1 >= 0 && matrix[i-1]
    adj_arr << matrix[i][j+1]
    adj_arr << matrix[i][j-1]  if j-1 >= 0
    # puts "#{adj_arr}"
    res = false and break unless adj_arr.compact.count("o") % 2 == 0
  end
end


puts res ? "YES" : "NO"