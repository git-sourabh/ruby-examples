class A
 
  def public_method
    private_method
  end
  
  def other_public_method
    self.protected_method
  end
  
  protected

    def protected_method
      puts "protected method"
    end

  private
  
    def private_method
      puts "I'm private"
    end

end

class B
  
  def <=>(other)
    foo <=> other.foo
  end
  
  protected
  
  attr_accessor :foo  
end

A.new.public_method
A.new.protected_method
