def convert(temp)
  format("%.2f", (temp-32) * 5.0 / 9)
end

puts "Enter a temp in Farenheit"
temp_in_f =  gets.chomp
STDOUT.flush
puts "#{temp_in_f}F is equal to #{convert(temp_in_f.to_f)} C"