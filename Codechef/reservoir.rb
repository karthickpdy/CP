t = gets.to_i
t.times do 
  n,m = gets.split(" ").map(&:to_i)
  arr = []
  
  ans = true

  n.times do |i|
    arr << gets.split("")
    # (0...m).each do |j|
    #   if arr[i][j] == 'A' && (i > 0 && arr[i-1][j] == 'B')        
    #     ans = false
    #     break
    #   end
    # end
  end

  # (0...n).each do |i|
  #   (0...m).each do |j|
  #     # if ((j == 0 || j == m - 1 ||  i == n - 1) && arr[i][j] != 'B')
  #     #   ans = false
  #     #   break
  #     if arr[i][j] == 'A' && (i > 0 && arr[i-1][j] == 'B')        
  #       ans = false
  #       break
  #     end
  #   end
  # end
  puts ans ? "yes" : "no"
end