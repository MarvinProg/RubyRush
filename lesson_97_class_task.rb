class Task < Post
  def initialize
    super # значит - вызови метод с точно таким же названием у класса родителя (Post)

    @due_date = Time.now
  end

  def read_from_console

  end

  def to_strings 

  end 
end 
