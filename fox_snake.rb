n,m = gets.split(" ").map(&:to_i)
flip = 0
res = []
(1..n).each do |i|
  if i % 2 != 0
    res << ["#"] * m
  else
    row = ["."] * (m - 1)
    if flip == 1
      row.unshift("#")
    else
      row << "#"
    end
    res << row
    flip ^= 1
  end
end
res.each do |r|
  puts r.join
end