n = gets.to_i
home_games = (n-1)
total_games = (n-1) * 2
home = []
away = []
home_count = Hash.new(0)
n.times do
	h,a = gets.split(" ").map(&:to_i)
	home << h
	home_count[h] += 1
	away << a
end
ans_count = []
n.times do |i|		
	ans_count << home_games + home_count[away[i]]
end

ans_count.each do |a|
	puts "#{a} #{total_games - a}"
end
#Good - Nice hash implementation to accept from tle