# By this you will understand the concept of "self" in Ruby,
# If you can call the methods you will be able to clear your concept of "self"

module Ab
  class A
    def A.a
      p "Called A.a"
      puts "#{self}"
    end

    def self.b
      p "Called self.b"
      puts "#{self}"
    end

    def Ab.method_name
      p "Called Ab.method_name"
      puts "#{self}"
    end
  end
  def Ab.method_name
    p "Called Ab.method_name outside"
    puts "#{self}"
  end
end

