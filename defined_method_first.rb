# defined_method
class String
  def self.add_new_method(name)
    send(:define_method, name) do
      puts "You have created a method #{name}, its define method"
    end
  end
end

String.add_new_method('print_sourabh')
String.add_new_method('print_sourabh1')
'sourabh'.print_sourabh1
