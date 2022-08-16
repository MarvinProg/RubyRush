require_relative "./lesson_41_02_hangman_methods.rb"

cls_method

puts "Game hangman v1.0"

letters = get_letters

errors = 0

bad_letters = []
good_letters = []

while errors < 7 do 
  print_status(letters, good_letters, bad_letters, errors) 

  puts "Enter last letter: "
  user_letter = get_user_letter

  result = check_result(user_letter, letters, good_letters, bad_letters)

  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

print_status(letters, good_letters, bad_letters, errors) 
