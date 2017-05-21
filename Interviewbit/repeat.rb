class Solution
    # param a : array of integers
    #return an integer
    def repeatedNumber(a)
        n = a.length
        root = Math.sqrt(n)

        a.each do |i|
            
        end
        
        hash = Hash.new(false)
        range.each do |x|
            if hash[x]
                return x
            else
                hash[x] = true
            end
        end

    end
end
