name_file = ARGV[0]

if name_file == nil
  abort 'Please, enter argument.'
end

current_path = File.dirname("__FILE__")
# name_file = "lesson_54_file.txt"
file_path = current_path + "/" + name_file

file = File.new(file_path, "r")
lines = file.readlines
file.close

empty_lines = 0
last_lines = []
lines.each_with_index do |string, idx| 
  if string == "\n"
    empty_lines += 1
  end

  if (lines.size - idx) <= 5
    last_lines << string
  end
end

puts "Name file: #{name_file}"
puts "Count lines: #{lines.size}"
puts "Empty lines: #{empty_lines}"
puts "Last 5 lines: "
# puts lines.inspect

for item in last_lines do 
  puts item 
end
