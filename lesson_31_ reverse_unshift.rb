arr_1 = [1, 2, 3, 4, 5, 6, 7]
puts arr_1.inspect 

arr_2 = []
arr_1.each do |item|
  arr_2.unshift(item)
end

puts arr_2.inspect 
