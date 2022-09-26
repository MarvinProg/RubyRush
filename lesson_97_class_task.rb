require "date"

class Task < Post
  def initialize
    super # значит - вызови метод с точно таким же названием у класса родителя (Post)

    @due_date = Time.now
  end

  def read_from_console
    puts "Wot you want? "
    @text = STDIN.gets.chomp

    puts "Enter date (dd.mm.yyyy): "
    date = STDIN.gets.comp 

    @due_date = Date.parse(date)
  end

  def to_strings 

  end 
end 
