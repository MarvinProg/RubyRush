@arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
puts "Your array: \n#{@arr.inspect}"

puts "Enter fist N elements: "
elements = STDIN.gets.chomp.to_i 

def fist_elements(elements)
  @arr.first(elements).inspect
end

puts "Your fist N element(s): \n#{fist_elements(elements)}"
