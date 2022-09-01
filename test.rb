# loop do 
#   loop do 
#     puts "1"
#     exit
#   end 
#   puts "2"
#   break
# end

# class People 
#   def puts_1
#     puts 1
#   end
# end

# people = People.new
# people.puts_1

# class People 
#   attr_accessor :surname

#   def initialize(name)
#     @name = name 
#     @surname = puts 1
#   end
# end

# people = People.new("Artem")
# people.surname

# number = 1 

# case number 
# when 0 
#   puts "0"
# when 1 
#   puts 1
# end


# Есть хеш, где каждой букве алфавита соответствует цифра. Нужно сделать так, чтобы буквы превращались в цифры. Например я пишу какое-либо предложение, а мне возвращается  набор цифр.
puts "Enter number: "
user_letters = STDIN.gets.chomp

word_and_number = {
  a: -1,
  b: -2,
  c: -3,
  d: -4, 
  " " => -100,
  "," => -101
}





