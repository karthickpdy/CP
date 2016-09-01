t = gets.to_i
t.times do 
  n,o = gets.split(" ").map(&:to_i)
  arr = gets.split(" ").map(&:to_i)
  chef = true
  chef_arr = []
  assistant_arr = []
  (1..n).each do |i|
    if !arr.include?(i)
      if chef
        chef_arr << i
      else
        assistant_arr << i
      end
      chef = !chef
    end
  end
  puts chef_arr.join(" ")
  puts assistant_arr.join(" ")
end