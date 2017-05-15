line = File.read("input.txt")

inputs = line.split("\n")

n,k = inputs[0].split(" ").map(&:to_i)
arr = inputs[1].split(" ").map(&:to_i)
list = arr.each_with_index.map { |a,i| [a,i]  }

list.sort!
# puts "#{list.min}"
ans = list[((-k)..-1)]

File.open("output.txt", 'w') { |file| 
	file.puts "#{ans.min[0]}"
	file.puts ans.map { |e| e[1]+1  }.join(" ")
}


