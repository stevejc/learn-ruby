granny = ""
until granny=="BYE"
  puts "You enter: "
  saying = gets.chomp

  if saying == "BYE"
    granny = "BYE"
  elsif saying == saying.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}"
  else
    puts "Grandma responds: UHU?! SPEAK UP SONNY!"
  end

end