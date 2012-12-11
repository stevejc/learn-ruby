=begin
doctest:my method returns hello world
>> hello
=> "Hello World!"
doctest: I can say hello to Leo
>> hello('Leo')
=> "Hello Leo!"
doctest: I can ask if Steve is here with hello('Steve', '?')
>> hello('Steve', '?')
=> "Hello Steve?"
=end

def hello(name='World',punctuation= '!')
"Hello #{name}#{punctuation}"
end

if __FILE__ == $0
  puts hello
end


