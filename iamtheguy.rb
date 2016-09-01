n = gets.to_i
arr = Array.new(n,false)
gets.split(" ").map(&:to_i).drop(1).each{ |i|
  arr[i-1] = true if i > 0
}

gets.split(" ").map(&:to_i).drop(1).each{ |i|
  arr[i-1] = true if i > 0
}

puts arr.all? ? "I become the guy." : "Oh, my keyboard!"