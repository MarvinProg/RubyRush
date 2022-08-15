def declination(number, krocodil, krokodila, krokodilov)
  remainder = number % 10 

  if number == nil || !number.is_a?(Numeric)
    number = 0
  end

  if number >= 11 && number <= 14
    return krokodilov
  end

  if remainder == 1
    return krocodil
  elsif remainder >= 2 && remainder <= 4
    return krokodila
  elsif remainder > 4 || remainder == 0
    return krokodilov
  end
end

count = ARGV[0].to_i

puts "#{count} #{declination(count, "Крокодил", "Крокодила", "Крокодилов")}"