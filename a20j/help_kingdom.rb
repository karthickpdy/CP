n = gets.chomp
a,b = n.gsub("-","").split(".")
b = b || "0"
b = b[0..1].ljust(2,"0")
a = a.reverse.scan(/.{1,3}/).map(&:reverse).reverse.join(",")

number = "#{a}.#{b}"

if n[0] != "-"
	puts "$#{number}"
else
	puts "($#{number})"	
end

