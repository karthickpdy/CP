
line = File.read("input.txt")
inputs = line.split("\n")

arr = Array.new(3,false)

start = inputs[0].to_i
arr[start-1] = true

3.times do |inp|
	i,j = inputs[inp+1].split(" ").map(&:to_i)
	i -= 1
	j -= 1
	arr[i],arr[j] = arr[j],arr[i]
end

File.open("output.txt", 'w') { |file| 
	file.puts arr.index(true) + 1
}

