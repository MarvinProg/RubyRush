hash = {
  "Artem" => {
    ticket: "1342343 14123", 
    traine: "№123", 
    track: "Москва - Анапа"
  }, 
  "Alina" => {
    ticket: "3647647", 
    traine: "№45", 
    track: "Москва - Анапа"
  }, 
  "Anjelika" => {
    ticket: "56764867345", 
    traine: "№46", 
    track: "Москва - Анапа"
  }
}

hash.each do |key, value|  
  puts "#{key}: "
  a = hash[key]
  a.each_key do |key_2|
    puts "#{key_2}: #{a[key_2]}"
  end
  puts "====="
end