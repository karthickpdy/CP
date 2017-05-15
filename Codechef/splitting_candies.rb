t = gets.to_i
t.times do
	n,k = gets.split(" ").map(&:to_i)
	if n == 0
		puts "0 0"
	elsif k == 0
		puts "0 #{n}"
	else
		s = n / k
		t = n % k
		puts "#{s} #{t}"
	end
end