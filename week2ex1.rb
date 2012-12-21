s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

s.lines.with_index(1) {|line, line_num| puts "Line #{line_num}: #{line}"}






