def split_string(string)
  lines = string.split("\n")
  line_number = 0
  lines.each do |line|
    line_number += 1
    yield(line_number, line)
  end
  
end

s = "Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n"
split_string(s) {|line_number, line| puts "Line #{line_number}: #{line}"}