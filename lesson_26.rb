puts "Enter number: 1 - Rock, 2 - Peper, 3 - Scissor"
user_choice = gets.chomp.to_i 

arr = ["Rock", "Peper", "Scissor"]
computer_choice = rand(3)

puts "Compyter enter: #{arr[computer_choice]}"
puts "User enter: #{arr[user_choice]}"

if user_choice == computer_choice
  puts 'All'
elsif user_choice == 0 && computer_choice == 1 
  puts 'You win!'
elsif user_choice == 1 && computer_choice == 2 
  puts 'You win!'
elsif user_choice == 2 && computer_choice == 0 
  puts 'You win!'
else 
  puts 'Win computer!'
end