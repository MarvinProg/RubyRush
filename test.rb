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
# puts "Enter number: "
# user_letters = STDIN.gets.chomp

# word_and_number = {
#   a: -1,
#   b: -2,
#   c: -3,
#   d: -4, 
#   " " => -100,
#   "," => -101
# }

# =========================================================================

# require 'net/http'

# uri = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component("аыдпьмадьмжаыуб") 
# wiktionary_page = Net::HTTP.get(URI(uri)).force_encoding('UTF-8')

# if /В настоящий момент текст на данной странице отсутствует/ =~ wiktionary_page
#   puts true 
# else
#   puts false
# end

# =========================================================================

# string = "One #Two,    #Three"
# arr = string.scan(/#[a-zA-ZА-Яа-яЁё0-9_-]+/)

# puts arr.inspect


# Какие есть адекватные способы получить случайное число определённой длинны? (20 символов)
# Array.new(20) { rand(0..9) }.join


# GC.start
# before = GC.stat(:total_freed_objects)

# RETAINED = []
# 100_000.times do
#   RETAINED << "a string".freeze
# end

# GC.start
# after = GC.stat(:total_freed_objects)
# puts "Objects Freed: #{after - before}"



# @hh = {}

# def method_1(key, value)
#   @hh[key] = value
# end

# method_1(:a, 1)

# puts @hh


# name = "Artem"

# def name.spacify
#   self.split('').join(' ')
# end
# puts name.spacify
# puts "Ivan".spacify

