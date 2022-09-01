require_relative "lesson_70_method.rb"

regex_string = get_random_regex_string

puts "Eter words: "
puts "Patterns: #{regex_string.gsub('.', '*')}"
puts "(for exit press -> x)"

count = 0

loop do 
  user_word = STDIN.gets.chomp

  if user_word.downcase == 'x'
    break
  end

  if user_word_exist?(user_word)
    if /#{regex_string}/ =~ user_word
      puts ".. OK =)"
      count += 1
    else 
      puts "Dont it.."
    end
  else 
    puts "Dont this word"
  end
end

puts "Game over, you count #{count}"
