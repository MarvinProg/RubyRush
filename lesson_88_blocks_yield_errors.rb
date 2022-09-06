def method_3
  unless block_given? 
    puts "Block not given" 
  else
    yield 
  end
end

method_3

#  Способ проверить наличие блока