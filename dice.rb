a,b = gets.split(" ").map(&:to_i)

a_win = 0
draw = 0
b_win = 0
(1..6).each do |i|
  if (a - i).abs < (b - i ).abs
    a_win += 1
  elsif (a - i).abs > (b - i ).abs
    b_win += 1
  else
    draw += 1
  end
end

puts "#{a_win} #{draw} #{b_win}"