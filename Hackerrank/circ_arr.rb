n,k,q = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
q.times { |n|
	m = gets.to_i
	puts arr[m-k]
}