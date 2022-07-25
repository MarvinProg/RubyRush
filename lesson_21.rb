randon_number = rand(0..15)

puts "Enter numben (0..15):"

loop do 
  number_user = gets.chomp.to_i 
  
  if number_user > randon_number
    puts "Down"
  elsif number_user < randon_number
    puts "Up"
  else
    # puts "You win!"
    # exit
    abort "You win!"
  end
end