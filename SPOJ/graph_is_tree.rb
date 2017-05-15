# #Union find

# def find(parent,a)
# 	return a if parent[a] == -1
# 	return find(parent,parent[a])
# end

# def union(parent,a,b)
# 	set_a = find(parent,a)
# 	set_b = find(parent,b)
# 	parent[set_a] = set_b
# end


# n,m = gets.split(" ").map(&:to_i)
# parent = Array.new(n,-1)

# ans = true

# m.times do
# 	a,b = gets.split(" ").map(&:to_i).sort
# 	a -= 1
# 	b -= 1
# 	x,y = find(parent,a),find(parent,b)
# 	if x == y
# 		ans = false
# 		break
# 	else
# 		union(parent,a,b)
# 	end
# end
# # puts "#{parent}"

# puts ans ? "YES" : "NO"

#Union find


def find(nodes,i)
	if nodes[i][:parent] != i
		nodes[i][:parent] = find(nodes,nodes[i][:parent])
	end
	return nodes[i][:parent]
end

def union(nodes,a,b)
	root_a = find(nodes,a)
	root_b = find(nodes,b)
	if nodes[root_a][:rank] > nodes[root_b][:rank]
		nodes[root_b][:parent] = root_a
	else
		nodes[root_a][:parent] = root_b
		nodes[root_b][:rank] += 1 if nodes[root_a][:rank] == nodes[root_b][:rank]
	end
end


n,m = gets.split(" ").map(&:to_i)

nodes = Array.new(n) { |i| {:parent => i,:rank => 0} }


ans = true

m.times do
	a,b = gets.split(" ").map(&:to_i).sort
	a -= 1
	b -= 1
	x,y = find(nodes,a),find(nodes,b)
	if x == y
		ans = false
		break
	else
		union(nodes,a,b)
	end
end
# puts "#{nodes}"

puts ans ? "YES" : "NO"