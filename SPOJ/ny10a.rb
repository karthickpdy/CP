t = gets.to_i
t.times do 
	h = {"TTT" => 0, "TTH" => 0, "THT" => 0, "THH" => 0, "HTT" => 0, "HTH" => 0, "HHT" => 0,"HHH" => 0}
	n = gets.to_i
	inp = gets.chomp
	(0...(inp.length-2)).each do |i|
		
		# puts val
		h[inp[i..i+2]] += 1
	end
	puts "#{n} #{h.values.join(' ')}"
end
