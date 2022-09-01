puts "Enter email: "
user_input = STDIN.gets.chomp 

if /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i =~ user_input
  puts "Okey!"
else 
  puts "Ist dont email!"
end