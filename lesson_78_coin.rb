10.times do 
  if rand(11) == 1
    puts "Edge"
  else 
    if rand(2) == 1
      puts "Eagle"
    else 
      puts "Tails"
    end
  end
end