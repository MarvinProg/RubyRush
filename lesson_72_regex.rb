puts "Enter string and tags(#): "
user_input = STDIN.gets.chomp 

tags = user_input.scan(/#[a-zA-ZА-Яа-яЁё0-9_-]+/)

puts "Tags: #{tags.join(" ")}"
