
you_say = ""

until you_say == "BYE"
  
  print "You say to Grandma > "
  you_say = gets.chomp

  if you_say != you_say.upcase
    puts "HUH?! SPEAK UP, SONNY"
  elsif you_say != "BYE"
    puts "NO, NOT SINCE #{rand(1938...1950)}"
  end
end
  
puts "Grandma walks away."
