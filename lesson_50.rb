hero = ["Бэтмен", "Фродо Бэггинс", "Шерлок Холмс"]
villan = ["Джокер", "Профессор Мориарти", "Саурон"]

puts "Enter hero person (Бэтмен, Фродо Бэггинс, Шерлок Холмс): "
user_choose_hero = STDIN.gets.chomp.capitalize

case user_choose_hero
when "Бэтмен", "Batman"
  puts villan[0]
when "Фродо Бэггинс"
  puts villan[2]
when "Шерлок Холмс"
  puts villan[1]
else 
  puts "Please, enter hero"
end
