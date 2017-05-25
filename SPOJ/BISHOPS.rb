while true
	begin		
		x = gets.chomp	
		n = x.to_i
		if n == 0 || n == 1
			puts n
		else 
			puts n + n - 2
		end
	rescue Exception => e
		break
	end
	
end