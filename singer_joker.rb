n, d = gets.split(" ").map(&:to_i)
song_duration = gets.split(" ").map(&:to_i)
breaks = n - 1
jokes_count = breaks * 2
time_left = d - breaks * 10
total_duration = song_duration.inject(0) { |a,s | a + s  }
if total_duration > time_left
  puts "-1"
else
  time_left -= total_duration
  jokes_count += time_left / 5
  puts jokes_count
end