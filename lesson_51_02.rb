require "./lesson_51_01.rb"

puts "Enter name produser (Jackie Chan): "
user_name_produser = STDIN.gets.chomp 

list_film = []
while list_film.size < 3 do
  puts "Enter film:"
  user_film = STDIN.gets.chomp 

  film = Movie.new(user_name_produser, user_film)

  list_film << film
end

film_random = list_film.sample 
puts "Recomend film: #{film_random.title}"
puts "Produsser: #{film_random.name_produser}"
puts film_random.class
