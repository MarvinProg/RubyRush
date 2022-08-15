puts "Enter number(star): "
number_star = STDIN.gets.chomp.to_i 

def look_star(number_star)
  "*" * number_star
end

puts "Your star(s): \n#{look_star(number_star)}"
