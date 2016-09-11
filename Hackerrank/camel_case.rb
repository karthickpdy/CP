s = gets.strip
l = s.scan(/[A-Z]/).length
l += 1 unless s.blank?
puts l
