require 'date'
puts DateTime.strptime(gets.strip,"%H:%M:%S%p").strftime("%H:%M:%S")
