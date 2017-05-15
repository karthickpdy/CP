r,x,y,x1,y1 = gets.split(" ").map(&:to_i)
d = Math.sqrt((y1-y)**2 + (x1-x)**2)
puts (d/(2*r).to_f).ceil