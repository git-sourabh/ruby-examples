def a(*p)
  puts p.inspect
end

a(*p = [1,2,3])
puts "-------"
a(1,2,3)
