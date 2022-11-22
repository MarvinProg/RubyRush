require "rexml/document"

current_path = File.dirname(__FILE__)
file_name = current_path + "/lesson_106.xml"

abort "File not found" unless File.exist?(file_name)

file = File.new(file_name)
doc = REXML::Document.new(file)
file.close

person = Hash.new 

["name", "surname", "phone", "email"].each do |field|
  person[field] = doc.root.elements[field].text
end

puts "name: #{person['name']}, surname: #{person['surname']}, phone: #{person['phone']}, email: #{person['email']}"
