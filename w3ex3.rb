#Displays the current working directory
original_directory = Dir.getwd
puts original_directory

#Creates new directory called tmp
Dir.mkdir('tmp')

#Changes the directory to tmp
Dir.chdir('tmp')

#Displays the current working directory
puts Dir.getwd

#goes back to original wprking directory
Dir.chdir(original_directory)
puts Dir.getwd

#delete the tmp directory
Dir.delete('tmp')
