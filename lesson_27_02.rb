eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

arr_eggs = []
bad = 0

for egg in eggs do
  if egg != 0
    bad += 1
  else 
    arr_eggs << egg
  end
end 

puts arr_eggs.inspect
puts bad