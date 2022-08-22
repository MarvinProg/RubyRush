class WordReader
  def read_from_file(file_name)
    if File.exist?(file_name)
      file = File.new(file_name, "r")
      lines = file.readlines
      file.close 
      lines.sample.chomp 
    else 
      nil
    end
  end
end