class A
  def method1(&block)
    yield block
  end
end
 
class B
  def initialize
    @instance_var1 = "instance_var1"
    @a = A.new
  end
 
  def method2
    local1 = "local1"
    @a.method1 do
      p local1
      p @instance_var1
      p helper1
    end
  end
 
  def helper1
    "helper1"
  end
end
 
b = B.new
b.method2
