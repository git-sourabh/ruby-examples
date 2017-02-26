# Way to create private class method
class PrivateClassMethod
  private

  def self.private_method
    # puts 'Private class method can be called normal'
  end
end

PrivateClassMethod.private_method
# -------------------------------------
# 2nd way (self class block)
class PrivateClassMethod
  class << self
    private

    def private_method
      puts 'Will also through exception'
    end
  end
end
# Try to call private method
PrivateClassMethod.private_method
# => private_class_method.rb:27:in `<main>': private method `private_method' called for PrivateClassMethod:Class (NoMethodError)
