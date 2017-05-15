
n = gets.to_i
arr = gets.split(" ").map(&:to_i)
x = 0
arr.each do |i|
	x |= i
end
puts x

# Good - The reasoning is as follows :
# OR operator always sets a bit, it can never unset a bit at any position when any of the numbers in
# or has a set bit at that position . Going by that argument each element is a subsequence of length 1 by itself
# SO there is a OR of all the given elements in the array which will set the max possible bits and whatever happens
# in all the other subsequences doesnt matter because XOR cannot create a new 1 at any position