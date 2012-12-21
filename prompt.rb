def prompt(question, symbol=">")
  puts question
  print "#{symbol} "
  answer = gets.chomp
  STDOUT.flush
  return answer
end