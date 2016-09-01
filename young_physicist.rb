x_sum = 0
y_sum = 0
z_sum = 0
n = gets.to_i
n.times do
  x,y,z = gets.split(" ").map(&:to_i)
  x_sum += x
  y_sum += y
  z_sum += z
end
puts x_sum == 0 && y_sum == 0 && z_sum == 0 ? "YES" : "NO"