require 'rexml/document'
require 'date'

puts "What did you spend the money on?"
spend_money_in_product = STDIN.gets.chomp 

puts "How much money was spent?"
amount_money = STDIN.gets.chomp.to_i 

puts "Purchase date: dd.mm.yyyy"
date_purcherse = STDIN.gets.chomp

current_date = nil 

if date_purcherse == ''
  current_date = Date.today
else 
  current_date = Date.parse(date_purcherse)
end

current_path = File.dirname(__FILE__)
file_name = current_path + '/lesson_109.xml'

file = File.new(file_name, 'r:UTF-8')

begin 
  doc = REXML::Document.new(file)
rescue REXML::ParseException => e
  puts "Error!"
  abort e.message
end
file.close 

expenses = doc.elements.find('expenses').first 
expense = expenses.add_element('expenses', {
  'amount' => amount_money, 
  'category' => spend_money_in_product, 
  'date' => date_purcherse.to_s
})

# expense.text = expense_text
expense_text = expense.text

file = File.new(file_name, "w")
doc.write(file, 2)
file.close 

puts "Recording completed successfully"