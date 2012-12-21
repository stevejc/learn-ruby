def leap_year?(year)
  year % 4 != 0 || year % 100 == 0 && year % 400 != 0
end

puts "Enter a year"
year = gets.to_i
STDOUT.flush

puts  !leap_year?(year) ?   "#{year} is a leap year and has 527,040 minutes." : "#{year} is not a leap year and thus has 525,600 minutes." 