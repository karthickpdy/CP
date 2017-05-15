MOD = (10**9)+7
def fast_exp(base, exp) 
    res=1
    while exp > 0 
       res = (res*base) % MOD if exp%2==1
       base = (base*base) % MOD
       exp/=2;
    end
    res % MOD
end

t = gets.to_i
@dp = {}
t.times do 
	n = gets.to_i
	count = 0
	# (2..(n-1)).each do |i|
	# 	x = i - 1
	# 	puts "n #{n-1} x #{x}"
	# 	count += C(n-1,x)
	# end
	count = fast_exp(2,(n-1)) - (2 % MOD) if n > 2
	puts count % (MOD)
end
#Good - One of the best problems
#Started with crude brute force
#Ended up with conclusion we need to place the greatest number in the different ith position(i from 2 to n-1)
#Calculated how many such variations are there for the i
#THen calculated how many ways numbers can be arranged for a given ith position with the greates number in ascending and descending order
# This gave a result like we can choose any number and it can be arranged in either asc or desc which reduces this to choosing problem
#Then tried with combinatorics which reuslted in TLE. Then realized its just calculating combination from 1 to (n-1)
# THe binomial formula for nc0..ncn = 2 ^ n, so what i am calculating is actually 
#is nc1..nc(n-1) = nc0..ncn - nc0 - ncn = 2 ^ n - nc0 - ncn = (2 ^ n) - 1 - 1 = (2 ^ n) - 2
# then calculated this normally using exp func in ruby which could not proces the larger exponent
# found a fast exp method and nailed it :D awesome :D :D :D