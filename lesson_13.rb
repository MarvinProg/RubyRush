t = Time.now
if t.wday == 0 || t.wday == 6
  puts "Выходной!"
else 
  puts "Солнце ещё высоко, надо работать!"
end