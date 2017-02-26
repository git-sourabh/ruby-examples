# def call_this_block_twice
#   yield
#   yield
# end

# call_this_block_twice{ puts "twice" }

tweets = ['sdf', 'df']
printer = lambda {|tweet| puts tweet }
tweets.each(&printer)
