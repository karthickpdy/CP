def diagonal?(i,j,n)
  (i == j) || (j == n - i )
end

matrix = []
n = gets.to_i

n.times do
matrix << gets.split('')

end

diagonal_letter = matrix[0][0]
other_letter = matrix[0][1]
forms_x = true
(0...n).each do |i|
  (0...n).each do |j|
    # puts "#{i} #{j} #{matrix[i][j]}"
  if diagonal?(i,j,n-1)
    if diagonal_letter != matrix[i][j]
     # puts "#{i} #{j} #{forms_x} mat #{matrix[i][j]} diag letter #{diagonal_letter} in diag"
     forms_x = false
     break
    end
  elsif other_letter != matrix[i][j]
    # puts "#{i} #{j} #{forms_x}"
    forms_x = false
    break
  end
  end
  break if forms_x == false
end

forms_x = diagonal_letter != other_letter if forms_x
puts forms_x ? "YES" : "NO"
