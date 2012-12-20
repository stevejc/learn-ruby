def leap_year?(year)
  case
  when year % 400 == 0 then true
  when year % 100 == 0 then false
  when year % 4 == 0 then true
  else false
  end
  
end

def leap_year2?(year)
  year % 4 != 0 || (year % 100 == 0 && year % 400 != 0)
end

puts "Enter a year"
year = gets.to_i
STDOUT.flush

puts leap_year?(year) ? "#{year} is a leap year and has 527,040 minutes." : "#{year} is not a leap year and thus has 525,600 minutes."

puts leap_year2?(year) ?  "#{year} is not a leap year and thus has 525,600 minutes." : "#{year} is a leap year and has 527,040 minutes."