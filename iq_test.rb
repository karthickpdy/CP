gets.to_i
numbers = gets.split(" ").map(&:to_i)
odd_count = 0
even_count = 0
numbers[0..2].each do |n|
  if n % 2 == 0
    even_count += 1
  else
    odd_count += 1
  end
end

remainder = 1
remainder = 0 if even_count > odd_count
numbers.each_with_index do |n,i|
  puts i + 1 and break if n % 2 != remainder
end
