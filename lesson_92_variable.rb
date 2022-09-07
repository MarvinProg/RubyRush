variable = 1

class People 
  def initialize
    @variable = 2
  end

  def check_variables
    puts defined?(variable)
    puts defined?(@variable)
  end 
end

people = People.new 
people.check_variables

puts "====="

puts defined?(variable)
puts defined?(@variable)