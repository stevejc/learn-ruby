collection = [12, 23, 456, 123, 4579]

collection.each do |num|
  num % 2 == 0 ? x = "even" : x = "odd"
  puts "#{num} is #{x}"
end