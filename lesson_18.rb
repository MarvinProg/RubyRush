puts "How much is 1 dollar worth now?"
dollar = gets.chomp.to_f

puts "How many rubles do you have?"
rubles = gets.chomp.to_f

sum_dollars =  rubles/dollar
puts "You have #{sum_dollars.round(2)} dollars now."