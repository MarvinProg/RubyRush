class Memo < Post
  def read_from_console
    puts "New the note (\"end\"): "
    line = nil 
    @text = []

    while line != "end"
      line = STDIN.gets.chomp 
      @text << line
    end

    @text.pop
  end

  def to_strings 
    @time_string = "Created: #{@create_at.strftime("%Y-%m-%d_%H-%M-%S")} \n\r \n\r"  
  end 
end 
