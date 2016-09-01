x1,y1,x2,y2 = gets.split(" ").map(&:to_i)

x_r = (x2 - x1)
y_r = (y2 - y1)
x_a = x_r.abs
y_a = y_r.abs
if (x1 != x2 && y1 != y2 && x_a != y_a)
  puts "-1"
elsif (x1 == x2)
  puts "#{x1 + (y1 - y2).abs} #{y1} #{x2 + (y1 - y2).abs} #{y2}"
elsif (y1 == y2)
  puts "#{x1} #{y1 + (x1 - x2).abs} #{x2} #{y2 + (x1 - x2).abs}"
else
  puts "#{x1} #{y2} #{x2} #{y1}"
end