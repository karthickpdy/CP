# # n = gets.to_i
# # l = n.to_s.length

# # if l > 2
# # 	list = [9,90]
# # 	x = 81
# # 	(l - 2).times do |i|
# # 		x *= 2
# # 	end
# # 	x +=  9
# # else
# # 	puts n
# # end


# # def dfs(num) #// run it as dfs(0)
# #   @ans += 1 if (num > 0 && num <= @n) 
# #   return if (num >= 10**8) 
# #   (0..9).each do |a|
# #   	number = num*10+a
# #     if number >0
# #       if number.to_s.split("").uniq.length <= 2
# #         dfs(number)
# #       end
# #     end
# #   end
# # end
# # require 'Set'
# def dfs(num) #// run it as dfs(0)
#   (1..@n).each do |a|
# 	  return if (a >= 10**8) 
# 	  if @n > 100000
# 	  	@ans += 1
# 	  else
# 	      if a.to_s.chars.to_a.uniq.length <= 2
# 	      	@ans += 1
# 	      end
#   	  end
#   end
# end

# @n = gets.to_i
# @ans = 0
# dfs(0)
# puts @ans

require 'Set'

def dfs(x,y,num,cnt=false)
	return if num > @n  || (num == 0 && !cnt)
	@s << num if num > 0
	dfs(x,y,num * 10 + x)
	dfs(x,y,num * 10 + y)	
end

@n = gets.to_i
@s = Set.new
(0..9).each do |i|
	((i+1)..9).each do |j|
		dfs(i,j,0,true)
	end
end
puts @s.length