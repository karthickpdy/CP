n,m,a,b = gets.split(" ").map(&:to_i)
no_of_special_tickets = n / m
one_way = n % m
puts [one_way * a + no_of_special_tickets * b, (n.to_f/m).ceil * b,n * a].min
#min(all sp,all one way,mix)