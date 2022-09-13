class Post 
  def initialize 
    @create_at = Time.now
    @text = nil 
  end 

  def read_from_console

  end

  def to_strings 

  end 

  def file_path 
    current_path = File.dirname(__FILE__)
    file_name = @create_at.strftime("#{self.class.name}_%Y-%m-%d_%H-%M-%S.txt")
    current_path + "/" + file_name
  end

  def method_save 
    file = File.new(file_path, "w")

    for item in to_strings do 
      file.push(item)
    end

    file.close
  end
end
