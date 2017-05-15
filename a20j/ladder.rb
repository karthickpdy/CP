n,m = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)

seq = []

arr.each_cons(2) do |a,b|
    if a < b
      seq << 0
    elsif a > b
      seq << 1
    else
      seq << seq[-1]
    end      
end
ans = []

yes_list = []

m.times do
  l,r = gets.split(" ").map(&:to_i)


  if yes_list.any? { |e| e[0] <= l && e[1] >= r  }
    ans << "Yes"
    next
  end

  list = seq[(l-1)...(r-1)].chunk{|a| a}.map{|x,arr| [x,arr.length]}
  if list.length == 0 || list.length == 1 ||(list.length == 2 && list[0][0] == 0 && list[0][1] == 1)
    yes_list << [l,r]
    ans << "Yes"
  else
    ans << "No"
  end

end

ans.each do |a|
  puts a
end