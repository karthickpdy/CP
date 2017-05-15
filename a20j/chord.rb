 notes = ["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "B", "H"]
 
 x,y,z = gets.split(" ")
 
  arr = [notes.index(x),notes.index(y),notes.index(z),notes.index(x)+12,notes.index(y)+12,notes.index(z)+12].sort


ans = "strange"
(0..arr.length - 3).each do |i|
	x_ind = arr[i]
	y_ind = arr[i+1]
	z_ind = arr[i+2]
	if (y_ind - x_ind == 4 && z_ind - y_ind == 3)
	 	ans = "major"
	elsif (y_ind - x_ind == 3 && z_ind - y_ind == 4)
	 	ans = "minor"
	end
	
end

 puts ans 



 # h d# f#
 # h d f#
#Good - Nice implementation