hash = {
  ticket: "1342343 14123", 
  traine: "№123", 
  track: "Москва - Анапа"
}

hash.each_key do |key|
  puts "#{key}: #{hash[key]}"
end