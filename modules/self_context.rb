# Ruby tweaks on 'self' with Moduel.
# Self is not always refer to invoking object as reference
module A
  def A.one
    puts "A -> one -> #{self}"
  end
  class B
    def A.one
      puts "B -> one -> #{self}"
    end
  end
end

A.one
# Output
# B -> one -> A

#------------------
# How we can get output below
# A -> one -> A
