
def binsearch(a,b,x)
l,r = 0,10**5
# false false true true - find the first true value
while l < r
mid = l + (r-l)/2
# puts "mid #{mid}"
if(((a * mid**2) + (b * mid)) >= x) # return true for mid element greater than equal to x
r = mid
else
l = mid + 1
end
end

l

end

t = gets.to_i
t.times do 
	a,b,c,k = gets.split(" ").map(&:to_i)
	puts binsearch(a,b,k-c)
end