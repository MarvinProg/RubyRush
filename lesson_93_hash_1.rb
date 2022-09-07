hash = {
  "Бэтмен" => "Джокер", 
  "Фродо Бэггинс" => "Саурон", 
  "Шерлок Холмс" => "Профессор Мориарти"
}

puts "Enter hero person (Бэтмен, Фродо Бэггинс, Шерлок Холмс): "
user_choose_hero = STDIN.gets.chomp 

if hash.has_key?(user_choose_hero)
  puts hash[user_choose_hero]
else 
  puts "Please, enter hero"
end