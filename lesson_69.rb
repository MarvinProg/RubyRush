puts 'Enter word, pleas: '
original_string = STDIN.gets.chomp
stripped_string = original_string.delete(' ,.!?;:—-').downcase
reverse_string = stripped_string.reverse

if reverse_string == stripped_string
  puts "Its palindrome"
else 
  puts "Dont palindrome"
end
