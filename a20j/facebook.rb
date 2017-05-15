name = gets.chomp
n = gets.to_i
priority = Hash.new(0)
n.times do
	v = gets.chomp.downcase
	arr = v.split(" ")
	a = arr[0]
	p = 0
	if arr[1].eql?("posted") 
		p = 15
		b = arr[3]
	elsif arr[1].eql?("commented") 
		p = 10
		b = arr[3]
	else
		p = 5
		b = arr[2]
	end
	b = b.sub("'s","")
	p = 0 unless (a.eql?(name) || b.eql?(name))
	priority[a] += p
	priority[b] += p	
end

priority.keys.sort{|k1,k2| priority[k1] != priority[k2] ? -(priority[k1] <=> priority[k2]) : k1 <=> k2}.each do |k|
	puts k unless k.eql?(name)
end
