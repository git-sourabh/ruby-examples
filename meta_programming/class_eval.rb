class Hello
end
Hello.class_eval do 
  def hello
    puts 'heloo'
  end
  def self.hello_again
    puts "hello again"
  end

end
h = Hello.new
h.hello
Hello.hello_again
h.hello_again
