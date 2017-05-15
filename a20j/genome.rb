first_count = Hash.new(0)
second_count = Hash.new(0)

a = gets.chomp
b = gets.chomp
ans = false
mismatch_ind = []
if a.length == b.length
	(0..a.length - 1).each do |i|
		
		a_char = a[i]
		b_char = b[i]
		
		first_count[a_char] += 1
		second_count[b_char] += 1
		mismatch_ind << i if a_char != b_char								
	end

	ans = true if first_count == second_count && ( mismatch_ind.length == 0 || (mismatch_ind.length == 2 && a[mismatch_ind[0]] == b[mismatch_ind[1]] && a[mismatch_ind[1]] == b[mismatch_ind[0]]))

end
puts ans ? "YES" : "NO"