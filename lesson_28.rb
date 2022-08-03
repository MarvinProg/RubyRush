arr = []

puts "Enter number N: "
number_user = gets.chomp.to_i 

number_while = 0

while number_user > number_while do 
  number_while += 1
  arr << number_while
end

# while number_user >= number_while do 
#   arr << number_while
#   number_while += 1
# end

sum = 0

arr.each do |item|
  sum += item
end

# puts arr.inspect
puts sum
