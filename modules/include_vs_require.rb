$LOAD_PATH << '.'

require 'trig.rb'
require 'moral'

# Example of mixin
class IncludeTest
  include Moral
  def test
    puts 'test'
  end
end

test = IncludeTest.new
test.test
puts '-------- require allow you to access module methods ---------'
Moral.sin(Moral::VERY_BAD)
puts '******** include allow you to access instance methods of module *********'
test.test_instance_method
puts '========= can not access instance method of module with module==========='
Moral.test_instance_method
