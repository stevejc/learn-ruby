print "Enter the file to be evaluated: > "
file = gets.chomp

replacement_file = ""

File.open(file, 'r') do |f|
  while line = f.gets
   line["word"] = "inserted word" if line.include?("word")
   replacement_file << line   
  end
end

File.open(file, 'w') do |f|
  f.puts replacement_file
end



  