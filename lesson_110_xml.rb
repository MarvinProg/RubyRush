require 'rexml/document'
require 'date'

unless File.exist?(file_path)
  File.open(file_path, 'w:UTF-8') do |file|
    file.puts "<?xml version='1.0' encoding='UTF-8'?>"
    file.puts '<wishes></wishes>'
  end
end

xml_file = File.read(file_path, encoding: 'UTF-8')
doc = REXML::Document.new(xml_file)

puts 'В этом сундуке храняться ваши желания.'
puts
puts 'Чего бы вы хотели?'
wish_text = STDIN.gets.chomp

puts
puts 'До какого числа вы хотите осуществить это желание?'
puts 'Укажите дату в формате ДД.ММ.ГГГГ'
wish_date_input = STDIN.gets.chomp
wish_date = Date.parse(wish_date_input)

wish = doc.root.add_element('wish', {'date' => wish_date.strftime('%d.%m.%Y')})

wish.add_text(wish_text)

File.open(file_path, 'w:UTF-8') do |file|
  doc.write(file, 2)
end

puts "Recording completed successfully"