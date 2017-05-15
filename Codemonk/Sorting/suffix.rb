suffix = []
s,k = gets.chomp.split(" ")
((s.length-1).downto(0)).each do |i|
    suffix << s[i..-1]
end
puts "#{suffix.sort[k.to_i-1]}"