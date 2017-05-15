require 'Date'

line = File.read("input.txt").split("\n")

n = line[0].to_i
count = Hash.new(0)
line[1..-1].each do |l|
	m,d,j,t = l.split(" ").map(&:to_i)
	curr = Date.new(2013,m,d)
	finish = curr - 1 
	start = curr - t
	(start..finish).each do |k|
		count[k] += j
	end
end

puts "#{count}"
File.open("output.txt", 'w') { |file| 
	file.puts "#{count.values.max}"
}


