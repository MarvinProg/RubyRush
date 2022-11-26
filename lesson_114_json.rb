require "json"

file = File.read("./lesson_114.json")

list_color = JSON.parse(file)

puts list_color["blue"]
puts list_color["red"]


# puts list_color.class
# puts list_color.inspect