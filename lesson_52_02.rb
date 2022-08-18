require "./lesson_51_01.rb"
require "./lesson_52_01.rb"

person_1 = Person.new('Сергей', 'Витальевич', 43)
person_2 = Person.new('Марина', 'Энн', 28)
person_3 = Person.new('Мадонна', 'Луиза', 58)

person_1.film = Movie.new('Челюсти', 'Спилберг')
person_2.film = Movie.new('Список Шиндлера', 'Спилберг')
person_3.film = Movie.new('Парк Юрского периода', 'Спилберг')

puts person_1.full_name
puts 'с любимым фильмом: ' + person_1.film.title

puts person_2.full_name
puts 'с любимым фильмом: ' + person_2.film.title

puts person_3.full_name
puts 'с любимым фильмом: ' + person_3.film.title

puts
puts 'Все любят Спилберга!'
