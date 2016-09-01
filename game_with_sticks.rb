n,m = gets.split(" ").map(&:to_i)
intersections = [n , m].min 
puts intersections % 2 != 0 ? "Akshat" : "Malvika"