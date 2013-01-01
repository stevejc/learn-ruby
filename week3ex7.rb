letters = ""
line_count = 0
text_analyzer = []
File.open("text.txt", "r") do |fline|
  while line = fline.gets
    letters << line
    line_count += 1
  end
end
  
character_count = letters.size
character_count_no_spaces = letters.delete(" ").size
word_count = letters.split.size
sentence_count = letters.count(".!?")
paragraph_count = letters.split("\n\n").size
text_analyzer << "There are #{character_count} characters"
text_analyzer << "There are #{character_count_no_spaces} characters not including spaces"
text_analyzer << "There are #{line_count} lines"
text_analyzer << "There are #{word_count} words"
text_analyzer << "There are #{sentence_count} sentences"
text_analyzer << "There are #{paragraph_count} paragraphs"
text_analyzer << "There are #{word_count/sentence_count} words per sentence on average"
text_analyzer << "There are #{sentence_count/paragraph_count} sentences per paragraph on average"

File.open("text_analyzer.txt", "w") { |file| file.puts text_analyzer}