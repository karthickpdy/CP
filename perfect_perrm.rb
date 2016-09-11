n = gets.to_i
if n.odd?
	puts -1
else
	p = (1..n).each_slice(2).map{|a| [a[1],a[0]]}.flatten
	puts p.join(" ")
end