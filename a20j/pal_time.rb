h,m = gets.split(":").map(&:to_i)

hour = h
minute = hour.to_s.rjust(2,'0').reverse.to_i

unless (minute > m && minute < 60)
	while true
		hour += 1
		hour %= 24
		minute = hour.to_s.rjust(2,'0').reverse.to_i
		break if minute < 60 
	end
end
#
hh = "%02d" % hour
mm = "%02d" % minute
puts "#{hh}:#{mm}"