n,v = gets.split(" ").map(&:to_i)
sellers = []
(1..n).each do |s|
  sellers << s if gets.split(" ").map(&:to_i)[1..-1].any?{|x| v > x}
end
puts sellers.count
puts sellers.join(" ")
