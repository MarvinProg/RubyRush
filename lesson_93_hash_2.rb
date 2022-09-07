hash = {
  'H' => 'Кавендиш',
  'He' => 'Локьер, Жансен, Рамзай',
  'Li' => 'Арфведсон',
  'Be' => 'Воклен',
  'B' => 'Дэви и Гей-Люссак',
  'C' => 'неизвестен',
  'N' => 'Резерфорд',
  'O' => 'Пристли и Шееле',
  'F' => 'Муассан',
  'Ne' => 'Рамзай и Траверс'
}

puts "All elements: #{hash.keys.size} -> #{hash.keys}"

puts "Enter elements: "
user_elements = STDIN.gets.chomp 

if hash.key?(user_elements)
  puts hash[user_elements]
else
  puts "Sorry, not found element."
end
