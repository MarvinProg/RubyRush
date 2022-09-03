puts "Enter fist number: "
@fist_number = STDIN.gets.chomp.to_i

puts "Enter second number: "
@second_number = STDIN.gets.chomp.to_i 

puts "Enter operation (* / + -): "
operation = STDIN.gets.chomp 

def addition
  @fist_number + @second_number
end

def subtruction 
  @fist_number - @second_number
end

def multiplication 
  @fist_number * @second_number
end 

def division 
  @fist_number / @second_number
end

if operation == "+"
  result = addition
elsif operation == "-"
  result = subtruction
elsif operation == "*"
  result = multiplication
elsif operation == "/"
  begin 
    result = division
  rescue ZeroDivisionError
    puts "Division on 0 dant work!" 
    result = "Error!"
  end
end

puts "Result: #{result}"