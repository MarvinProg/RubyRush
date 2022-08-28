current_path = File.dirname("__FILE__")
file_holidays = File.new(current_path + "/lesson_66_holidays.txt", "r")

lines = file_holidays.readlines
file_holidays.close

lines.each do |item|
  item.chomp!
end

time = Time.now
date = time.strftime('%d.%m')

if (time.wday == 0 || time.wday == 6) || lines.include?(date)
  puts "Выходной!"
else 
  puts "Солнце ещё высоко, надо работать!"
end
