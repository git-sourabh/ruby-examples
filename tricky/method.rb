def amethod(param)
  puts 'in method'
  puts param.object_id
  param += ' universe'
  puts param.object_id
  param << ' world'
  puts param.object_id
end

str = 'hello'
puts "==="
puts str.object_id
amethod(str)
puts "---"
puts str.object_id
'---------------'
p str
