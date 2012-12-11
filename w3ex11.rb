collection = [12,23,456,123,4579]

collection.each do |number|
  number.even? ? (even_or_odd = "even") : (even_or_odd = "odd")
  puts "#{number} is #{even_or_odd}"
end