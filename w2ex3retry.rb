def leap_year(year)
  if year%4==0
    if year%100==0
      if year%400==0
        leap_year = true
      else
        leap_year = false
      end
    else
      leap_year = true
    end
  else
    leap_year = false
  end
  if leap_year == true
    yield(366*24*60, leap_year)
  else
    yield(365*24*60, leap_year)  
  end
end
puts"Enter a year and I will tell you if it's a leap year"
print"? "
STDOUT.flush
year = gets.to_i
leap_year(year) {|minutes, leap_year|
  if leap_year == true
    puts "#{year} is a leap year."
    puts "There are #{minutes} minutes in a leap year."
  else
    puts "#{year} is not a leap year"
    puts "There are #{minutes} minutes in a non leap year."
  end
}