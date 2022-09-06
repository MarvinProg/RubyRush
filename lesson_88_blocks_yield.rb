def method_1
  yield 2
  yield 3
end

method_1 { |item| puts "Hello Artem " * item }