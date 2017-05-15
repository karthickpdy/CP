def f(t)
    @a * t**3 + @b * t**2 + @c * t + @d
end

def pred_ub(mid,target)
    f(mid) <= target
end
def binsearch_ub(target)
    # true true false false false- find the LAST TRUE value for which predicate matches
    l = 0
    r = 10**6
    while l < r
        mid = l + (r-l+1) / 2        
        if pred_ub(mid,target)
            if f(mid+1) > target
                l = mid
            else
                l = mid + 1
            end
        else
            r = mid - 1 # false value found, shrink the range and ignore the false value
        end
    end
    l
end


t = gets.to_i
t.times do 
    @a,@b,@c,@d,k = gets.split(" ").map(&:to_i)
    puts binsearch_ub(k)
end