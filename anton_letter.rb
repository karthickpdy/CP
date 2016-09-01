require 'set'
puts gets.chomp.gsub(/[{} ]/,"").split(",").to_set.count
