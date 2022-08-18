class Person
  attr_accessor :film, :age, :name, :surname

  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
    @film = nil
  end

  def old?
    @age >= 60
  end

  def full_name
    if old?
      "#{@name} #{@surname}"
    else
      @name
    end
  end
end