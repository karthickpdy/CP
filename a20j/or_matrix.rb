def make_zero(i,j,n,m)
	@arr[i] = Array.new(m,0)
	(0..(n-1)).each do |row|
		@arr[row][j] = 0
	end
end


def calc(i,j,n,m)
	row_or = @arr[i].inject(0,&:|)
	col_or = 0
	(0..(n-1)).each do |row|
		col_or |= @arr[row][j] 
	end
	row_or | col_or
end

n,m = gets.split(" ").map(&:to_i)
b_arr = []
@arr = []
n.times do
	b_arr << gets.split(" ").map(&:to_i)
	@arr << Array.new(m,1)
end

n.times do |i|
	m.times do |j|
		make_zero(i,j,n,m) if b_arr[i][j] ==0
	end
end

@new_arr = []
n.times do |i|
	@new_arr << []
	m.times do |j|
		@new_arr[i][j] = calc(i,j,n,m)
	end
end
# puts "#{@arr}"
# puts "barr #{b_arr}"
# puts "new #{@new_arr}"
if b_arr == @new_arr
	puts "YES"
	@arr.each do |a|
		puts a.join(" ")
	end
else
	puts "NO"
end