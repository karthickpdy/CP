	def fact(n)
		(1..n).inject(:*) || 1
	end

    def findRank(a)
    	sorted = Hash[a.split("").sort.each_with_index.to_a]
    	count = 0
    	l = a.length
    	a.each_char.with_index do |c,i|
    		count += (sorted[c]) * fact(l - 1 - i)
    	end

    	# ans = a.split("").sort.permutation(4).map{|x| x.join("")}.index(a)

    	(count ) % 1000003
    end

    puts findRank(gets.chomp)