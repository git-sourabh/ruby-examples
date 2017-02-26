# Way to create private class method
class PrivateClassMethod
  private

  private_class_method def self.private_method
    puts 'Private class method way'
  end
end

PrivateClassMethod.private_method
# private_class_method.rb:10:in `<main>': private method `private_method' called for PrivateClassMethod:Class (NoMethodError)
