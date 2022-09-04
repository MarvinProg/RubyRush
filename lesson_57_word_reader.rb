class WordReader
  def read_from_file(file_name)
    begin
      file = File.new(file_name, "r")
      lines = file.readlines
      file.close 
    rescue SystemCallError 
      abort "File not found."
    end
    
    lines.sample.chomp 
  end
end