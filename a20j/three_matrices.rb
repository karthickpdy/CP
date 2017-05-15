n = gets.to_i
a = []
n.times do
	a << gets.split(" ").map(&:to_i)
end
b = []
n.times do
	b << []
end
c = []
n.times do
	c << []
end
(0...n).each do |i|
	(0...n).each do |j|
		if i == j
			b[i][j] = a[i][j].to_f
			c[i][j] = 0.0
		elsif i > j
			t = (a[i][j]+a[j][i])/2.0
			b[i][j] = t
			b[j][i] = t
			c[i][j] = a[i][j] - t
			c[j][i] = -c[i][j]
 		end
	end
end

b.each do |v|
	puts v.join(" ")
end
c.each do |v|
	puts v.join(" ")
end