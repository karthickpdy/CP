r1,c1,r2,c2 = gets.split(" ").map(&:to_i)

row_diff,col_diff = (r2-r1).abs,(c1-c2).abs

rook_moves = 0
rook_moves += 1 if r1 != r2
rook_moves += 1 if c1 != c2
king_moves = [row_diff,col_diff].max

bishop_moves = 0
if (r1 + c1) % 2 == (r2+c2) %2
bishop_moves = 1
bishop_moves += 1 if row_diff != col_diff
end

puts "#{rook_moves} #{bishop_moves} #{king_moves}"

#Good - http://codeforces.com/problemset/problem/370/A