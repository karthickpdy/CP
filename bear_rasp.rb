n,c = gets.split(" ").map(&:to_i)
rates = gets.split(" ").map(&:to_i)
max_earn = 0
(0..n-2).each do |i|
  val = rates[i] - rates[i+1] - c
  max_earn = val if val > max_earn
end
puts max_earn