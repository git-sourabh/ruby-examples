module A
  def self.a
    puts 'sdfdsf'
  end
end

class Thing
end
a = %q{def self.hello() "Hello there!" end}
p a.class
# A.class_eval(a)
# puts A::a
# Thing.module_eval("invalid code", "dummy", 123)
