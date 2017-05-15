n = gets.to_i
CON = [:taxi,:pizza,:girl]
friends = []
names = []
n.times do
	m,name = gets.chomp.split(" ")
	names << name
	m = m.to_i
	nos = Hash.new(0)
	m.times do
		ans = nil
		x,y,z = gets.chomp.split("-")
		a,b,c = x.to_i,y.to_i,z.to_i
		arr = [x.split(''),y.split(''),z.split('')].flatten

		# puts "#{one} #{two} #{three} #{four} #{five} #{six}"
		# puts "#{b} #{c}"
		# puts "#{(one.to_i > two.to_i) && (three.to_i > four.to_i) && (five.to_i > six.to_i)}"
		if a == b && b == c && arr.each_cons(2).all?{|l,m| l == m}
			ans = CON[0]
		elsif a > b && b > c && arr.each_cons(2).all?{|l,m| l > m}
			ans = CON[1]
		else
			ans = CON[2]
		end
		nos[ans] += 1
	end
	friends << nos
end
taxi = []
pizza = []
girl = []
# puts "#{friends}"
friends.each_with_index do |f,i|
	taxi[i] = f[CON[0]]
	pizza[i] = f[CON[1]]
	girl[i] = f[CON[2]]
end

list = []
max = taxi.max
taxi.each_with_index do |t,i|
	list << names[i] if t == max
end

puts "If you want to call a taxi, you should call: #{list.join(', ')}."


list = []
max = pizza.max
pizza.each_with_index do |t,i|
	list << names[i] if t == max
end

puts "If you want to order a pizza, you should call: #{list.join(', ')}."

list = []
max = girl.max
girl.each_with_index do |t,i|
	list << names[i] if t == max
end

puts "If you want to go to a cafe with a wonderful girl, you should call: #{list.join(', ')}."



# 