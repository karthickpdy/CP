n1,n2,n3 = gets.split(" ").map(&:to_i)

count = Hash.new(0)

(n1+n2+n3).times do 
	count[gets.to_i] += 1
end

count.delete_if do |k,v|
	v < 2
end
puts count.length
res = count.keys.sort
res.each { |e| puts e  }