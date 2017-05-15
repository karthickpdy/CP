n,k = gets.split(" ").map(&:to_i)
bad = n - k
perm = (2..bad).to_a
perm.push(1)
perm.push(*((bad+1)..(bad+k)))
if n == k
	puts "-1"
else
puts perm.join(" ")
end
#Good - THe logic is very nice - if u put the number and next number gcd is always 1