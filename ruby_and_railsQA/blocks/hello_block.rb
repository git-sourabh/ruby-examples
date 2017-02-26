def hello(&block)
  block
end
 
hello do
  puts 'hello'
end
