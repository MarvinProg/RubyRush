class Weightlifter 
  def initialize(name, biceps=0, triceps=0, press=0)
    @name = name
    @biceps = biceps
    @triceps = triceps
    @press = press
  end

  def up_biceps
    @biceps += 1
  end

  def up_triceps 
    @triceps += 1
  end

  def up_press 
    @press += 1
  end

  def state_weightlifter
    puts "Name: #{@name}"
    puts "Biceps: #{@biceps}"
    puts "Triceps: #{@triceps}"
    puts "Press: #{@press}"
  end
end