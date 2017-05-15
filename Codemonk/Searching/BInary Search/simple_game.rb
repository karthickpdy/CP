def smaller_count(arr,x)
l,r = 0,arr.length - 1
while l < r
# true true true false false - return last true value
mid = l + (r - l + 1) / 2
if(arr[mid] < x)
l = mid
else
r = mid - 1
end		
end
arr[l] < x ? l + 1 : 0
end

def larger_count(arr,x)
l,r = 0,arr.length - 1
while l < r
# false false false true true - return first true value
mid = l + (r - l) / 2
if(arr[mid] > x)
r = mid
else
l = mid + 1
end		
end
arr[l] > x ? arr.length - l : 0
end

n,m = gets.split(" ").map(&:to_i)
monk_a = gets.split(" ").map(&:to_i).sort
monk_b = gets.split(" ").map(&:to_i).sort

monk_a_score = 0

monk_a.each do |a|
	f = smaller_count(monk_b,a)
	g = larger_count(monk_b,a)
	monk_a_score += f * g
end


monk_b_score = 0

monk_b.each do |a|
	f = smaller_count(monk_a,a)
	g = larger_count(monk_a,a)
	monk_b_score += f * g
end

if monk_a_score > monk_b_score
	puts "Monk #{monk_a_score - monk_b_score}"
elsif monk_a_score < monk_b_score
	puts "!Monk #{monk_b_score - monk_a_score}"
else
	puts "Tie"
end