line = File.read("input.txt")
n,hand = line.split("\n")


n = n.to_i
res = []


arr = hand.split("")

nos = [*(0..n-1).step(2),*(1..n-1).step(2)]

nos.each_slice(2) do |a|
	o = arr[a[0]]
	e = arr[a[1]]
	odd_ind = a[0]
	even_ind = a[1]
	odd_ind,even_ind = even_ind,odd_ind if o != e && o != "R"
	res << [even_ind+1,odd_ind+1]
end
File.open("output.txt", 'w') { |file| 
	res.each do |a|
		file.puts(a.join(" "))
	end
}


#Good - File writing technique and nice range technique