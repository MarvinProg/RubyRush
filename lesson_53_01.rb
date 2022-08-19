if File.exist?("./lesson_53_file.txt") # проверка на уществование, возваращает true
  file = File.new("./lesson_53_file.txt", "r")
  
  # content = file.read(15)
  content = file.read
  
  puts content
else 
  puts "File dont create"
end
