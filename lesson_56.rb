current_path = File.dirname("__FILE__")
file_path_1 = current_path + "/lesson_56_01.txt"
file_path_2 = current_path + "/lesson_56_02.txt"

file_1 = File.new(file_path_1, "r")
file_2 = File.new(file_path_2, "r")

lines_1 = file_1.readlines
lines_2 = file_2.readlines

file_1.close
file_2.close

good_answer = 0

puts "Hello!"

puts "Question: #{lines_1[0]}"
puts "You answer: "
user_answer = STDIN.gets.chomp.to_i
if user_answer == lines_2[0].to_i 
  puts "Win!"
  good_answer += 1
else 
  puts "No.."
end
puts 

puts "Question: #{lines_1[1]}"
puts "You answer: "
user_answer = STDIN.gets.chomp.to_i
if user_answer == lines_2[1].to_i 
  puts "Win!"
  good_answer += 1
else 
  puts "No.."
end
puts 

puts "Question: #{lines_1[2]}"
puts "You answer: "
user_answer = STDIN.gets.chomp.to_i
if user_answer == lines_2[2].to_i 
  puts "Win!"
  good_answer += 1
else 
  puts "No.."
end
puts 

puts "Good answer #{good_answer} from 3."
