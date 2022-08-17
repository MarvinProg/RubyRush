require "./lesson_48_01.rb"

weightlifter_1 = Weightlifter.new("Ivan")
weightlifter_2 = Weightlifter.new("Anjelika")
weightlifter_3 = Weightlifter.new("Artem")

6.times do |number|
  weightlifter_1.up_biceps
  weightlifter_1.up_triceps 
  weightlifter_1.up_press  
end

48.times do |number|
  weightlifter_2.up_biceps
  weightlifter_2.up_triceps 
  weightlifter_2.up_press  
end

7.times do |number|
  weightlifter_3.up_biceps
  weightlifter_3.up_triceps 
  weightlifter_3.up_press  
end

weightlifter_1.state_weightlifter
puts 
weightlifter_2.state_weightlifter
puts 
weightlifter_3.state_weightlifter
