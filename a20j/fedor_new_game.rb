n,m,k = gets.split(" ").map(&:to_i)

arr = []

m += 1
m.times do
	n = gets.to_i
	arr << n
end
fedor = arr[-1]
count = 0
(0..m-2).each do |i|
	n = arr[i] ^ fedor
	set = 0
	while n >0
		n &= (n-1)
		set += 1
	end
	count += 1 if set <= k
end

puts count
#Good - Xor and count the ones will give the difference of bits