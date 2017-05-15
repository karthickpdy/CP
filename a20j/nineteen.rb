s = gets.chomp
count = Hash.new(0)
s.each_char do |c|
	count[c.downcase] += 1
end
vals = {"i" => 1,"n" => 3,"t" => 1,"e" => 3}

count.select!{|k,_| vals.keys.include?(k)}
# puts "#{count}"
n_count = count.delete("n")
res = count.each_with_object([]) do |(k,v),rr|
	rr << v / vals[k]
end
# puts "#{res} #{n_count}"
ans = res.min if n_count && res.length == 3
if n_count && res.min && n_count / vals["n"] < res.min
	# ans = 
	# puts n_count
	if n_count < res.min * vals["n"] - (res.min - 1)
		# puts "here #{res.min} #{n_count}"
		rem_n =  res.min - 1
		# puts (rem_n..1)
		res = false
		rem_n.downto(0) do |i|
			# puts i
			val = ((n_count + i) / vals["n"])
			# puts "#{i+1} #{val}"
			if val == i + 1
				ans = val 
				res = true
				break
			end
		end		
		ans = 0 unless res
	end
end

puts ans ? ans : "0"

# nineteenineteeineteenineteen 
# nineteennineteennineteennineteeniteen - 13

#Good - Struggled and found