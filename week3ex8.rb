(1..100).each do |count|
  output = ""
  output << "Fizz" if count % 3 == 0
  output << "Buzz" if count % 5 == 0 
  output = count.to_s if count % 3 != 0 && count % 5 !=0 
  
  puts output
end