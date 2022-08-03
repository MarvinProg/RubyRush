names = []
user_names = nil 

while user_names != '' do 
  user_names = gets.chomp
  names << user_names
end

# puts names.inspect 

for item in names do 
  puts "People #{item}"
  sleep 0.5

  if item == "Artem"
    puts "You to?"
    break
  end
end

puts "Aaaaaa......"
