
def prompt
  print prompt
  STDOUT.flush
  gets.chomp
end


sex = "Gender?".prompt
puts "Nice to meet you #{name}!"

#age = prompt("How old are you?").to_i
#puts "In 10 years you will be #{age + 10} years old."

