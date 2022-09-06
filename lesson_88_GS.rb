arr = []

90000000.times do 
  arr << "Hello world!"
end

arr = nil 

GC.start

gets
