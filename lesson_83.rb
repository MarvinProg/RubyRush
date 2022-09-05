# randon_number_1 = rand(1..6)
# randon_number_2 = rand(1..6)
# randon_number_3 = rand(1..6)

puts "Enter numben: "
number_user = gets.chomp.to_i 

sum = 0

number_user.times do 
  die = rand(6) + 1
  puts die 
  sum += die
end 

puts "Sum die: #{sum}"
