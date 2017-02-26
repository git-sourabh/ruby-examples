# Way to create private class method
class PrivateClassMethod
  private

  def self.private_method
    puts 'Private class method can be called normal'
  end
end

# Try to call private method
PrivateClassMethod.private_method
# => private class method

# -------------------------------------
# 1st way (instance eval)
PrivateClassMethod.instance_eval do
  private

  def private_method
    puts 'Will through exception'
  end
end
