line_count = 0

File.open('text.txt') do |f|
  while line = f.gets
    line_count += 1
  end
end


new_file = File.read('text.txt')
puts new_file.class

character_count = new_file.scan(/./).size
character_count_wo_spaces = (character_count) - (new_file.count " ")

word_count = new_file.scan(/\w+/).size 
sentence_count = new_file.scan(/((?<=[a-z0-9)][.?!])|(?<=[a-z0-9][.?!]"))\s+(?="?[A-Z])/).size
paragraph_count = new_file.scan(/\n\n/).size

average_num_words_per_sentence = word_count.to_f / sentence_count
average_num_sentences_per_paragraph = sentence_count.to_f / paragraph_count

puts "There are #{character_count} characters in the file"
puts "There are #{character_count_wo_spaces} characters not including spaces in the file"
puts "There are #{line_count} lines in the file"
puts "There are #{word_count} words in the file"
puts "There are #{sentence_count} sentences in the file"
puts "There are #{paragraph_count} paragraphs in the file"
puts "There are an average of #{average_num_words_per_sentence} words per sentence in the file"
puts "There are an average of #{average_num_sentences_per_paragraph} sentences per paragraph in the file"



