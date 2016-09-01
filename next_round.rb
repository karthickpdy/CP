n,k = gets.split(" ").map(&:to_i)
scores = gets.split(" ").map(&:to_i)
key = scores[k-1]
puts scores.select{|score| score !=0 && score >= key}.size