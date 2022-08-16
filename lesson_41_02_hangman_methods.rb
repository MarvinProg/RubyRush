def get_letters 
  word = ARGV[0]

  if word == nil || word == ""
    abort "Please, enter word."
  end

  # return word.split("")
  word.split("")
end

# puts get_user_letter.to_s

def get_user_letter
  letter = ""

  while letter == "" do 
    letter = STDIN.gets.chomp
  end

  letter
end

def check_result(user_letter, letters, good_letters, bad_letters)
  if good_letters.include?(user_letter) || bad_letters.include?(user_letter)
    0
  end

  if letters.include?(user_letter)
    good_letters << user_letter
    
    # if letters.uniq.size == good_letters.size
    if letters.uniq.sort == good_letters.sort
      1
    else 
      0
    end
  else 
    bad_letters << user_letter
    -1
  end
end

def get_word_for_print(letters, good_letters)
  result = ""

  # letters.each_char do |letter|
  #   if good_letters.include?(letter)
  #     result += letter + " "
  #   else 
  #     result += "__ "
  #   end
  # end

  for letter in letters do 
    if good_letters.include?(letter)
      result += letter + " "
    else 
      result += "__ "
    end
  end

  result
end

def print_status(letters, good_letters, bad_letters, errors) 
  puts "\n Word #{get_word_for_print(letters, good_letters)}"

  puts "Errors: #{errors}. Bad letters: #{bad_letters.join(", ")}"

  if errors >= 7 
    puts "Sorry, you lost"
  else
    # if letters.uniq.size == good_letters.size
    if letters.uniq.sort == good_letters.sort
      puts "You win!"
    else 
      puts "Count of attempts: #{7 - errors}"
    end
  end
end

def cls_method 
  system "clear" or system "cls"
end
