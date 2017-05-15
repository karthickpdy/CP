
def pred(mid,target)
    mid >= target # Should return false for all lower values and true for all higher values
end
def binsearch_lb(nums,target)
    # false false true true true - FIRST TRUE value for which the predicate matches is lower bound
    l = 0
    r = nums.length - 1
    while l < r
        mid = l + (r-l) / 2
        if pred(nums[mid],target)
            r = mid # Found a true value..search in the range for the lowest true value
        else
            l = mid + 1 # l cannot be mid as it is false
        end
    end
    pred(nums[l],target) ? l : l  + 1
end

n = gets.to_i
# arr = gets.split(" ").map(&:to_i)
arr = []
n.times do
	arr << gets.to_i
end
q = gets.to_i
q.times do
	arr.sort!
	i = binsearch_lb(arr,gets.to_i)
	puts "#{arr[0...i].count} #{arr[0...i].inject(0,:+)}"
end