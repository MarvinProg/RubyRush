require "json"

file = File.read("lesson_115.json")

title = JSON.parse(file)

# puts title.sort.inspect
puts "
  name: #{title["name"]}, 
  surname: #{title["surname"]}, 
  phone: #{title["phone"]}, 
  email: #{title["email"]}
"
