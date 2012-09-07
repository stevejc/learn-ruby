(1..100).each do |count|
  output = ""
  output = "Fizz" if count % 3 == 0
  output += "Buzz" if count % 5 == 0
  output = count if output == ""
           
  puts output
  
end