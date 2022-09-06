require "digest/sha1"

puts "Enter word: "
user_word = STDIN.gets.chomp 

puts "Enter MD5 or SHA1: "
user_digest = STDIN.gets.chomp 

if user_digest == "MD5"
  key = Digest::MD5.hexdigest user_word
elsif user_digest == "SHA1"
  key = Digest::SHA1.hexdigest user_word
else 
  puts "Error!"
end

puts "You key: #{key}."
