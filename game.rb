n = gets.to_i
home  = []
guest = []
n.times{
  h,g = gets.split(" ").map(&:to_i)
  home.push(h)
  guest << g
}
ans = 0

home.each{|h|
  ans += guest.count(h)
}
puts ans