def gcd(a,b)
if b == 0
  return a;
else
  return gcd(b, a % b);
end
end


coprime = false
req_a = 0
req_b = 0
req_c = 0
l,h = gets.split(" ").map(&:to_i)
(l..h).each do |a|
  (a+1..h).each do |b|
    (b+1..h).each do |c|
      # puts "#{a} #{b} #{c}"
      # puts "#{gcd(b,a)} #{gcd(c,b)} #{gcd(c,a)}"
      if gcd(a,b) == 1 &&  gcd(b,c) == 1 && gcd(a,c) != 1
        req_a = a
        req_b = b
        req_c = c
        coprime = true
        break
      end

    end
    break if coprime
  end
  break if coprime
end

puts coprime ? "#{req_a} #{req_b} #{req_c}" :-1
