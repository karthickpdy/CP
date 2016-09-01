def max(a,b)
  [a,b].max
end
a = gets.to_i
b = gets.to_i
c = gets.to_i

ans = a + b + c;
ans = max(ans, (a + b) * c);
ans = max(ans, a * (b + c));
ans = max(ans, a * b * c);

puts ans
