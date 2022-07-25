puts "What currency do you have? 
  1. dollar 
  2. rubles"
currency = gets.chomp.to_i

if currency == 1
  puts "How much is 1 dollar worth now?"
  dollar = gets.chomp.to_f

  puts "How many rubles do you have?"
  rubles = gets.chomp.to_f

  sum_dollars =  rubles/dollar
  puts "You have #{sum_dollars.round(2)} dollars now."
elsif currency == 2
  puts "How much is 1 rubles worth now?"
  rubles = gets.chomp.to_f

  puts "How many dollars do you have?"
  dollar = gets.chomp.to_f

  sum_dollars =  dollar/rubles
  puts "You have #{sum_dollars.round(2)} dollars now."
else 
  puts "Sorry, error."
end