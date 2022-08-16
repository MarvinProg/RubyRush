class People
  def initialize(name, surname, age)
    @name = name 
    @surname = surname 
    @age = age
  end

  def full_name 
    puts "#{@name} #{@surname}, #{@age}"
  end

  def examination_ag
    if @age <= 21
      puts "One"
    else 
      puts "Two"
    end
  end
end