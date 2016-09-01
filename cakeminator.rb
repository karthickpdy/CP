r,c = gets.split(" ").map(&:to_i)
matrix = []
r.times {
  matrix << gets.chomp.split("")
}

# puts "#{matrix}"
straw_row = []
straw_col = []
matrix.each_with_index do |row,i|
  row.each_with_index do |val, j|
    if val == "S"
      straw_row << i
      straw_col << j
    end
  end
end
# puts "#{straw_col} #{straw_row}"
rows = (0..r-1).to_a
cols = (0..c-1).to_a
rem_rows = rows - straw_row
rem_cols = cols - straw_col
res = []
r.times{
  res << [false] * c
}
rem_rows.each{ |i|
  (0..c-1).each {|j|
    res[i][j] = true
  }

}

rem_cols.each{ |j|
  (0..r-1).each {|i|
    res[i][j] = true
  }

}

puts "#{res.flatten.count(true)}"