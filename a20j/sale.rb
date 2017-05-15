n,m = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i).select{|a| a<0}.sort[0..(m-1)]
sum = arr.inject(0,:+)
puts -sum
