first = gets.split(" ").map(&:to_i)
second = gets.split(" ").map(&:to_i)
third = gets.split(" ").map(&:to_i)

arr = [first.inject(0,&:+),second.inject(0,&:+),third.inject(0,&:+)]
s = arr.inject(0,&:+) / 2
first[0],second[1],third[2] = s-arr[0],s-arr[1],s-arr[2]
puts "#{first.join(' ')}"
puts "#{second.join(' ')}"
puts "#{third.join(' ')}"