s = gets.chomp
required = {'B' => 1, 'u' => 2,'l' => 1, 'b' => 1,'a' => 2,'s' => 1,'r' => 1}
count = Hash.new(0)
s.each_char do |a|
	count[a] += 1
end
val = []
required.each_key do |k|
	val << count[k] / required[k]
end
puts val.min