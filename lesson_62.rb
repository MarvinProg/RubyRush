require "translit"

puts "Enter words (latin): "
usre_words = STDIN.gets.chomp 

puts Translit.convert(usre_words)
puts 

puts "Введите слово (русское): "
usre_words = STDIN.gets.chomp 

puts Translit.convert(usre_words, :english)
