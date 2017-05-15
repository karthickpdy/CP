# @param {Integer[]} a
# @return {Integer}
def number_of_arithmetic_slices(a)
	count = 0
	list = []
	a.each_cons(3).each_with_index do |(l,m,n),i|
		if m - l == n - m
			d = m - l
			list << [i,d]
			count += 1
		end
	end

	(4..(a.length)).each do |i|
		list.reject_if{|l| 
			if a[(l[0] + i - 1)] && ((a[(l[0] + i - 1)] - a[l[0]]) == l[1] * (i-1))
				count += 1
				false
			else
				true
			end
		}	
	end
	count
end
# number_of_arithmetic_slices([1,2,3,4])