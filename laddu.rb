def get_points(activities)
  case activities[0]
    when "CONTEST_WON"
      bonus = 0
      rank = activities[1].to_i
      bonus = 20 - rank if rank <= 20
      return 300 + bonus
    when "TOP_CONTRIBUTOR"
      return 300
    when "BUG_FOUND"
      return activities[1].to_i
    when "CONTEST_HOSTED"
      return 50
  end
end

n = gets.to_i
n.times do
  act,origin = gets.split(" ")
  act = act.to_i
  points = 0
  act.times do
    points += get_points(gets.split(" "))
  end
  divider = 200
  divider = 400 if origin.eql?("NON_INDIAN")
  puts points / divider
end