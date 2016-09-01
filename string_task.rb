str = gets.chomp
str.gsub!(/[aeiouy]/i,'')
str.downcase!
str.gsub!(/./m,'.\0')
puts str