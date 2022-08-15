puts "Enter circle radius: "
circle_radius = STDIN.gets.chomp.to_f

def area_of_the_circle(radius)
  s = 3.14 * radius**2
end

puts area_of_the_circle(circle_radius)