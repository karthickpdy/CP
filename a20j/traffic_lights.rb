l,d,v,g,r = gets.split(" ").map(&:to_i)

till_a = d/v.to_f
# puts "#{till_a}"
total_interval = g + r
# puts "total_interval#{till_a % total_interval}"
extra_time = (till_a % total_interval) >= g ? (total_interval - (till_a % total_interval)) : 0
# puts "#{extra_time}"
a_to_b = (l-d) / v.to_f
# puts "#{a_to_b}"
# 

puts till_a + extra_time + a_to_b