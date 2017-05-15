def build( node, start,  last)

    if(start == last)
         # Leaf node will have a single element
        @tree[node] = @arr[start];
    else
         mid = (start + last) / 2;
         # Recurse on the left child
        build(2*node, start, mid);
         # Recurse on the right child
        build(2*node+1, mid+1, last);
         # Internal node will have the sum of both of its children
        @tree[node] = @tree[2*node] + @tree[2*node+1];
    end
end

def update( node,  start,  last,  idx,  val)

    if(start == last)
    
         # Leaf node
        @arr[idx] += val;
        @tree[node] += val;
    
    else
    
        mid = (start + last) / 2;
        if(start <= idx and idx <= mid)        
            # // If idx is in the left child, recurse on the left child
           update(2*node, start, mid, idx, val);   
        else        
            # // if idx is in the right child, recurse on the right child
            update(2*node+1, mid+1, last, idx, val);
   		end
        # // Internal node will have the sum of both of its children
        @tree[node] = @tree[2*node] + @tree[2*node+1];
end