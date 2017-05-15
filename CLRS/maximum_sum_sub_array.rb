#Recursive solution
def cross_over(a,l,r)
	l_sum = 0
	(l..)	
end

def max_sum(a,l,r)
	return a[l] if l >= r
	m = l + (r - l) / 2
	l_sum = max_sum(a,l,m)
	r_sum = max_sum(a,m+1,r)
	cross_sum = crossover(a,l,r)
	return [l_sum,r_sum,cross_sum].max
end