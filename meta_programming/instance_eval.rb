class Hello
end
Hello.instance_eval do
  def hello
    puts "hello"
  end
end
Hello.hello
h = Hello.new
h.instance_eval do
  def hi
    puts "hiii"
  end
end
h.hi
