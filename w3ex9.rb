def reverse_string_word_order(string)
  words = []
  words << string.split(" ")
  reverse_string = ""
  words[0].reverse_each { |x| reverse_string<< x + " "}
  yield(reverse_string)

end

print "Enter a string: > "
STDOUT.flush
string = gets.chomp

reverse_string_word_order(string){|reverse_string| puts reverse_string}

