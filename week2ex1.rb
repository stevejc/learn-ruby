s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

lines = s.split("\n")

lines.each_with_index {|line, line_num| puts "Line #{line_num.next}: #{line}"}






