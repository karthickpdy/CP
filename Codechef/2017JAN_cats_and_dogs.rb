t = gets.to_i
t.times do
  c, d, l = gets.split(' ').map(&:to_i)
  cat_on_dogs = d * 2
  rem = c > cat_on_dogs  ? c - cat_on_dogs : 0
  puts (l % 4 == 0 && (l <= ((c + d) * 4) )&&( l >= ((d+rem) * 4) ))? "yes" : "no"
end