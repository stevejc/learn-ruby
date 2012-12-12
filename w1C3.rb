def multiplication_table(number, title, decoration)
  max_length = (number*number).to_s.length + 1
  table_width = max_length*number+1
  array1=[]
  if title[0].upcase == "Y"
    header = "Times Table to #{number}".length
    center = table_width - header
    if center > 1
      indent = " " * (center / 2)
    else 
      indent = ""
    end
    array1<<[indent + "Times Table to #{number}"] 
  end
  array1<< ["="*(table_width)] if decoration[0].upcase == "Y"
  number.times do |x|
    x +=1
    array2=[]
    number.times do |y|
      y+=1
      sum = (x*y).to_s
      array2<< sum.insert(0," "*(max_length - sum.length))
    end
    array1<<array2
  end
  return array1
  
end

puts "This application creates a multiplication table up to X"
puts "Enter the number you want the times table to go up to"
number = gets.chomp.to_i
puts "Do you want a title? (Yes/No)"
title = gets.chomp
puts "Do you want decoration? (Yes/No)"
decoration = gets.chomp

array =  multiplication_table(number, title, decoration)

array.each do |row|
  row.each do |p| 
    print p
  end
  puts "\n"
end



