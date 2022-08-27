puts "Hello, im you diary.\n
  Pleas, enter text (\"the end\"): \n"

current_path = File.dirname(__FILE__)

line = nil 
all_lines = []

while line != "the end" do 
  line = STDIN.gets.chomp
  all_lines << line
end

time = Time.now 
file_name = time.strftime("%Y-%m-%d")
time_string = time.strftime("%H:%M")

seperator = "_ " * 20

file = File.new(current_path + "/lesson_63_#{file_name}.txt", "a")
file.print("\n\r#{time_string}\n\r")
all_lines.pop

all_lines.each do |item|
  file.puts(item)
end

file.puts(seperator)
file.close

puts "You text saved ib file: /lesson_63_#{file_name}.txt"
