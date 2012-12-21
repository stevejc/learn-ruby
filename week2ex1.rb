s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"

lines = s.split("\n")

lines.to_enum.with_index(1) {|line, line_num| puts "Line #{line_num}: #{line}"}






