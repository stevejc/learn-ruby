require "./prompt"

def leap_year?(year)
  year % 4 != 0 || year % 100 == 0 && year % 400 != 0
end

year = prompt("Enter a year", ">>").to_i

puts  !leap_year?(year) ?   "#{year} is a leap year and has 527,040 minutes." : "#{year} is not a leap year and thus has 525,600 minutes."

first_name = prompt("What is your first name")

last_name = prompt("What is your last name", ">>: ")

puts "Nice to meet you #{first_name} #{last_name}"


