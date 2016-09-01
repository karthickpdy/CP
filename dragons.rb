s,n = gets.split(" ").map(&:to_i)
win = true
dragons = []
n.times do
  dragons << gets.split(" ").map(&:to_i)
end
dragons.sort! do |a,b|
  if a[0] != b[0]
    a[0] <=> b[0]
  else
    b[1] <=> a[1]
  end
end
dragons.each { |dragon|
  if s > dragon[0]
    s += dragon [1]
  else
    win = false
    break
  end
}
puts win ? "YES" : "NO"