t = gets.to_i
s = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz"
t.times do 
	k = gets.to_i
	k = k + (k-1) / 25
	puts s[0..k].reverse

end


# s = ("abcdefghijklmnopqrstuvwxyz")
# r = s.reverse
# t = []
# 1.upto(100) do |j|
#   a = ""
#   k = j + (j-1)/25
#   (k/26).times do |i|
#     a += r
#   end
#   t << s[0..(k%26)].reverse + a
# end
# gets.to_i.times {puts t[gets.to_i-1]}
