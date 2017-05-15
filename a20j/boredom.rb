# def bore(arr)	
# 	poi = []

# 	return 0 if arr.empty?
# 	arr.uniq.each do |a|
		
# 		i = arr.index(a)		
# 	 	@freq[a] = arr.count(a)	unless @freq[a]
# 		val = @freq[a]
# 		poi << (val * a) + bore( arr - [a,a+1,a-1])		
# 	end
# 	return poi.max	
# end


n = gets.to_i
arr = gets.split(" ").map(&:to_i)

@freq = Hash.new(0)

arr.each{|i| @freq[i] += 1}

one_count = @freq[1]

f = []

f[0] = 0
f[1] = one_count


(2..1000001).each do |i|
	f[i] = [f[i-1],f[i-2] + (@freq[i] * i)].max	
end
puts f[-1]

#Good - Well tried! Really understood the problem..be careful in using arr.count method-costed a lot of time