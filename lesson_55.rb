current_path = File.dirname("__FILE__")
# name_file = "lesson_54_file.txt"
file_path_1 = current_path + "/lesson_55_01.txt"
file_path_2 = current_path + "/lesson_55_02.txt"
file_path_3 = current_path + "/lesson_55_03.txt"
file_path_4 = current_path + "/lesson_55_04.txt"

file_1 = File.new(file_path_1, "r")
file_2 = File.new(file_path_2, "r")
file_3 = File.new(file_path_3, "r")
file_4 = File.new(file_path_4, "r")

lines_1 = file_1.readlines
lines_2 = file_2.readlines
lines_3 = file_3.readlines
lines_4 = file_4.readlines

puts lines_1.sample 
puts lines_2.sample 
puts lines_3.sample 
puts lines_4.sample 

file_1.close
file_2.close
file_3.close
file_4.close
