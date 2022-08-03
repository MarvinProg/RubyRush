arr = []

puts "Enter number: "
number_user = gets.chomp.to_i 

arr_number = 0

while number_user > arr_number do 
  arr_number += 1
  arr << rand(0..100)
end

puts arr.inspect

max_number = 0
arr.each do |item|
  if item > max_number
    max_number = item 
  end
end

puts "Max number: #{max_number}"
