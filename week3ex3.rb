original_directory =  Dir.pwd
puts "You are in the #{original_directory} directory"
Dir.mkdir("tmp")
puts "You just created a new tmp directory"
Dir.chdir("tmp")
temp = Dir.pwd
puts "You are now in the #{temp} directory."
Dir.chdir(original_directory)
puts "You are in the #{original_directory} directory"
Dir.delete(temp)
puts "You just deleted the tmp directory"
