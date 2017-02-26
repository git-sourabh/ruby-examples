primary = [1,2,3] 
secondary = [2,2,3]

# ss = secondary.reject{|s| primary.include? s }
# p ss.empty?

p primary - secondary 

# test = primary.dup
# p secondary.all? { |e| (i = test.index(e)) && test.delete_at(i) }

# primary, secondary = [1, 2, 3], [2, 2]
# #⇒ false
# # p primary
# # p secondary
# p '---------------'
# primary, secondary = [1, 2, 2, 3], [2, 2, 1]

# p primary
# p secondary
