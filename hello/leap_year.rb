=begin
doctest: leap_year? 2000 returns true
>> leap_year?(2000)
=> true
doctest: leap_year? 1999 returns false
>> leap_year?(1999)
=> false
doctest:leap_year? 1900 returns false
>> leap_year?(1900)
=> false
doctest: leap_year? 2004 returns true
>> leap_year?(2004)
=> true
=end

def leap_year?(year)
  year = Integer(year)
  year % 4 == 0 and year % 100 !=0 or year % 400 == 0
end

=begin
doctest: number of minutes in leap year 2000
>> minutes_in_year(2000)
=> 527040
doctest: number of minutes in a standard year 1999
>> minutes_in_year(1999)
=> 525600
=end

def minutes_in_year(year)
  leap_year?(year) ?  366*24*60 : 365*24*60
end
=begin
doctest: leap_year?("2000") should be true
>> leap_year?("2000")
=> true
doctest: leap_year?("1999") should be false?
>> leap_year?("1999")
=> false
doctest: leap_year?("This is doesn't look like a number") 
>> leap_year?("This doesn't look like a number")
=> ''
=end

if __FILE__ == $0
puts "Enter a year to check if a leap year >"
STDOUT.flush
year = gets.chomp
kind_of_year = leap_year?(year)
number_of_minutes = minutes_in_year(year)
puts "#{year} is a leap year: #{kind_of_year}"
puts "There are #{number_of_minutes} in #{year}"
end
