class Bird 
  def initialize 
    puts "Im bird"
    @fly = false 
  end

  def bird_fly
    puts "Bird fly!"
    @fly = true
  end

  def bird_fly_answer?
    puts @fly
  end
end
