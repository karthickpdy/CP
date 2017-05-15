# @param {Character[][]} board
# @return {Integer}
def count_battleships(board)
   count = 0
   l = board[0].length - 1
   (0..(board.length-1)).each do |i|
   		(0..l).each do |j|
   			if board[i][j] == 'X' && !( (i - 1 >= 0 && board[i-1][j] == 'X') || (j - 1 >= 0 && board[i][j-1] == 'X'))
	   			count += 1 
	   		end
   		end   
   end 
   return count
end
arr = []
3.times do
	arr << gets.split('')
end
puts count_battleships(arr)