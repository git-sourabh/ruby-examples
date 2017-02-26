def blah(&block)
  yadda(block)
end
 
def yadda(block)
  foo(block)
end
 
def foo(block)
  block.call
end
 
blah do
  puts "hello"
end
