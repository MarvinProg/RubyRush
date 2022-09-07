$a = 1
b = 2
def method_1
  c = 3

  puts "Variable '$a': #{defined?($a)}"
  puts "Variable 'b': #{defined?(b)}"
  puts "Variable 'c': #{defined?(c)}"

  puts 
end

puts "Variable '$a': #{defined?($a)}"
puts "Variable 'b': #{defined?(b)}"
puts "Variable 'c': #{defined?(c)}"

method_1
