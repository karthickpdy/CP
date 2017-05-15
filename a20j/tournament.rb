n = gets.to_i

comb = (1..n).to_a.combination(2).to_a

list = []

won = {}
lost = {}


(((n * (n-1))/2)-1).times do
	l = gets.split(" ").map(&:to_i)
	won[l[0]] ||= []
	won[l[0]] << l[1]

	lost[l[1]] ||= []
	lost[l[1]] << l[0]

	list << l.minmax
end

missed = (comb - list).flatten
# puts "#{missed}"
# puts "#{won[missed[0]]}"
# puts "#{lost[missed[1]]}"
if ((won[missed[0]]||[]) & (lost[missed[1]] || [])).empty?
	missed[0],missed[1] = missed[1],missed[0]
end
puts "#{missed[0]} #{missed[1]}"