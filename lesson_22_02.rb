arr = ["apple", "banana", "pear"]

puts "Array: #{arr}"

arr_2 = []

arr_2 << "Ivan"
arr_2.push("Ivanov")
arr_2.unshift("Name: ")

puts "Array 2: #{arr_2}"

puts arr[2]
arr.delete("apple")
puts "Array: #{arr}"

arr_2.delete_at(2)
puts "Array 2: #{arr_2}"