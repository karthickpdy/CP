def gcd(a,b)
	return a if b == 0	
	gcd(b,a%b)
end

def coprime(a,b)        
        x = gcd(a,b)
        while(x!=1)
            a /= x
            b = x
            x = gcd(a,b)
        	# puts "#{x} #{a} #{b}"
        end
        a
end


puts coprime(gets.to_i,gets.to_i)