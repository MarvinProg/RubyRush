class Link < Post
  def initialize
    super # значит - вызови метод с точно таким же названием у класса родителя (Post)

    @url = ""
  end

  def read_from_console
    puts "Address link: "
    @url = STDIN.gets.chomp 

    puts "About link: "
    @text = STDIN.gets.chomp 
  end

  def to_strings 

  end 
end 
