n,m = gets.split(" ").map(&:to_i)
low_limit = (n.to_f / 2).ceil
val = -1
(low_limit..n).each {|a|
  val = a  and break if a % m == 0
}

puts val