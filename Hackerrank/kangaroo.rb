x1,v1,x2,v2 = gets.split(" ").map(&:to_i)
 puts (v1 > v2) && ((x2-x1) % (v2-v1) == 0) ? "YES" : "NO" 