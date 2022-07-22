puts "Выберите 1 из 2х вариантов: "
choice = gets.chomp 

if choice == "1"
  puts 'Вы выбрали 1й вариант'
else 
  puts 'Вы выбрали 2й ваирант. Теперь выберите так же \'3\' вариант или \'4\''
  choice_2 = gets.chomp 
  if choice_2 == "3"
    abort '3'
  else 
    abort "4"
  end
end