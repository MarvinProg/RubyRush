# puts ARGV.inspect
# % ruby lesson_32.ARGV.rb 1 2 text Artem
# ["1", "2", "text", "Artem"]

argument = ARGV[0]

if argument == "Анжелика"
  puts "Крассавчик"
else 
  puts "Oy..."
end
