require 'Set'

n,m = gets.split(" ").map(&:to_i)
list = []

m.times do |i|
	a,b = gets.split(" ").map(&:to_i)
	list << [a,b].minmax
end
list.sort!

team1 = Hash.new(false)
team2 = Hash.new(false)
count = 0

list.each do |(a,b)|
	
	a_in_team1 = team1[a]
	a_in_team2 = team2[a]
	
	b_in_team1 = team1[b]
	b_in_team2 = team2[b]

 	if (a_in_team1 && b_in_team1) || (a_in_team2 && b_in_team2)
		count += 1
		a_in_team1 = false
		a_in_team2 = false		
	elsif a_in_team1
		team2[b] = true
	elsif a_in_team2
		team1[b] =  true
	elsif b_in_team1
		team2[a] = true
	elsif b_in_team2
		team1[a] = true
	else
		team1[a] = true
		team2[b] = true
	end									
end

current_people = n - count

if current_people.odd?
	current_people -= 1
	count += 1
end

# team1_count = team1.keys.count{|x| a[x] == true}
# team2_count = team2.keys.count{|x| a[x] == true}

# each_team_count = current_people/2

# available = current_people - team1_count - team2_count

# if team1_count != team2_count
# end
puts count