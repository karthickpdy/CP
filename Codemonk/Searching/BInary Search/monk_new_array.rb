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



def pred_ub(mid,target)
    mid <= target # Should return true for all lower values and false for all higher values
end
def binsearch_ub(nums,target)
    # true true false false false- find the LAST TRUE value for which predicate matches
    l = 0
    r = nums.length - 1
    while l < r
        mid = l + (r-l+1) / 2
        if pred_ub(nums[mid],target)
            l = mid # Found true value, true to find the last by moving(cannot move to mid + 1 as this mid may be last value )
        else
            r = mid - 1 # false value found, shrink the range and ignore the false value
        end
    end
#     !pred_ub(nums[l],target) || nums[l] == target ? l : l + 1
l
end


n,m = gets.split(" ").map(&:to_i)
arr = []
n.times do
    arr << gets.split(" ").map(&:to_i).sort    
end
min = 10**9

arr.each_cons(2) do |a,b|

    a.each do |l|
        x,y = binsearch_lb(b,l),binsearch_ub(b,l)
        u = (b[x] - l).abs if b[x]
        v = (b[y] - l).abs if b[y]
        min = [u,v,min].compact.min
    end
end
puts min
