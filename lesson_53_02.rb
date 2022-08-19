current_path = File.dirname("__FILE__")

file_path = current_path + "/lesson_53_file.txt"

puts "Day aphorism: "

if File.exist?(file_path)
  file = File.new(file_path, "r")
  lines = file.readlines
  file.close
  puts lines.sample
else 
  puts "File dont create"
end
