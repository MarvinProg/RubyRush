require "json"
require "date"

file = File.read("./lesson_114_2.json")

signs = JSON.parse(file)

puts 'Когда вы родились (укажите дату в формате ДД.ММ, например, 08.03)'
user_date_string = STDIN.gets.chomp

user_date = Date.parse(user_date_string + '.2000')

user_sign = nil

signs.each do |_, sign|
  dates = sign['dates'].split('..').map do |date_string|
    Date.parse("#{date_string}.2000")
  end

  user_sign = sign if dates.first <= user_date && user_date <= dates.last
end


puts user_sign['dates']
puts user_sign['text']
