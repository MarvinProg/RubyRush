# require_relative "lesson_73_text.txt"

current_path = File.dirname("__FILE__")
file_path = current_path + "/lesson_73_text.txt"

if File.exist?(file_path)
  file = File.new(file_path, "r")
  lines = file.readlines
  file.close 
else
  puts "Dont file"
end

regex_attributes = /\b[a-zA-ZА-Яа-яЁё]{3}\b/
lines_string = lines.join
cleaned_text = lines_string.gsub(/[,\(\)\.\-;:\?\!]/, '')
search = cleaned_text.scan(regex_attributes)

puts "There is a three letter wordin the text #{search.count} times"
# puts search.inspect