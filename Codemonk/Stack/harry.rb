t = gets.to_i

ans = false
harry = gets.split(" ").map(&:to_i)
q,x = gets.split(" ").map(&:to_i)
monk = []

q.times do 
  inp = gets.chomp.downcase
  if inp == "harry"
    monk << harry.shift
  else
    monk.pop
  end
  if monk.inject(0,:+) == x
    ans = true
    break
  end
  # puts "#{harry} monk #{monk}"
end
if ans 
  puts monk.length
else
  puts "-1"
end
