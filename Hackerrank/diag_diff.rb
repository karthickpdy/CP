n = gets.to_i
matrix = []

n.times do
	matrix << gets.split(" ").map(&:to_i)
end

main_diag = sec_diag = 0
(0..n-1).each do |i|
	main_diag += matrix[i][i]
	sec_diag += matrix[i][n-i-1]
end
puts (main_diag - sec_diag).abs