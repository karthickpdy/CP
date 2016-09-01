n,k = gets.split(" ").map(&:to_i)
no_participations = gets.split(" ").map(&:to_i)
count_hash = {}

no_participations.each do |p|
  count_hash[p] ||= 0
  count_hash[p] += 1
end
res = 0
(0..5-k).each do |i|
  res += count_hash[i] if count_hash[i]
end
puts res / 3