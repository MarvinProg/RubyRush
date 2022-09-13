class People 
  # attr_accessor :name 
  attr_reader :name 

  def initialize(name)
    @name = name
  end

  def method_obedient
    true
  end
end

class Person < People 
  def method_obedient
    false
  end
end

people_1 = People.new("Artem Artemov")
person_1 = Person.new("Ivan")
person_2 = Person.new("Alina")

puts "People: #{people_1.name}, obedient: #{people_1.method_obedient}"
puts "Person: #{person_1.name}, obedient: #{person_1.method_obedient}"
puts "Person: #{person_2.name}, obedient: #{person_2.method_obedient}"
