cars = ["Audi", "BMV", "Bentley", "Chevrolet", "Chery", "Citroen", "Ford", "Dodge", "Ferrari", "Honda"]

puts "Count cars: #{cars.size}"
puts "Number car? (0..9)"
number_car = gets.chomp.to_i 

if number_car >= 0 && number_car < cars.size
  puts "You win car - #{cars[number_car]}"
else 
  puts "Sorry!"
end