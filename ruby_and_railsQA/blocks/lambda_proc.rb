puts "---------------- Lambda example ----------------"
def lamda_test
  lam = lambda { return }
  lam.call
  puts "Hello world!"
end
lamda_test             # Calling this method will print "Hello world!" (i.e the flow control continues to execute after the lambda block also)

puts "---------------- Proc example ----------------"
def proc_test
  proc = Proc.new { return }
  proc.call
  puts "Hello world!"
end
proc_test              # Calling this method will print nothing (i.e the flow control terminates within the Proc block only.)
