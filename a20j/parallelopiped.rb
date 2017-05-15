s1,s2,s3 = gets.split(" ").map(&:to_i)
a = Math.sqrt(s1 * s3 / s2) 
b = Math.sqrt(s1 * s2 / s3) 
c = Math.sqrt(s2 * s3 / s1) 
puts ((a+b+c) * 4).to_i