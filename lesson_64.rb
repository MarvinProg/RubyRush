current_path = File.dirname(__FILE__)
file = File.new(current_path + "/lesson_64_text.txt", "a")

# file << "Hello Artem"
file.puts("Hello Artem")
file.close
