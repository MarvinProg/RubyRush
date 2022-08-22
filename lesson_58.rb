current_path = File.dirname(__FILE__)

file_name = current_path + "/lesson_58_list_films.txt"

if File.exist?(file_name)
  file =  File.new(file_name, "r")
  lines = file.readlines
  file.close 
else 
  puts "Sorry, not file."
end

puts "Random film: "
puts "#{lines.sample.chomp}."
