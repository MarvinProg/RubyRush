current_path = File.dirname(__FILE__)

file_name = current_path + "/lesson_59_list_films.txt"

if File.exist?(file_name)
  file =  File.new(file_name, "r")
  lines = file.readlines
  file.close 
  number = rand(lines.length)

  if number % 2 == 1
    number -= 1
  end

  puts lines[number]
  puts lines[(number + 1)]
else 
  puts "Sorry, not file."
end
