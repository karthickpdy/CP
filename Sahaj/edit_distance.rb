a,b = gets.chomp.split(" ")
dp = []

(0...a.length).each do |i|
  (0...b.length).each do |j|
    dp[i] ||= []
    if i == 0
      dp[i][j] = j
    elsif j == 0
      dp[i][j] = i
    elsif a[i] == b[j]
      dp[i][j] =  dp[i-1][j-1]
    else
      dp[i][j] = 1 + [dp[i-1][j],dp[i][j-1],dp[i-1][j-1]].min
    end                        
  end  
end
puts dp[-1][-1]