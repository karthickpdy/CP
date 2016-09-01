n,k = gets.split(" ").map(&:to_i)

f,t = gets.split(" ").map(&:to_i)
val = t <= k ?  f : f - (t-k)
max_joy = val

(n-1).times{
  f,t = gets.split(" ").map(&:to_i)
  val = t <= k ?  f : f - (t-k)
  max_joy = val if val > max_joy
}
puts max_joy