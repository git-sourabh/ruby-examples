# result = like_map.map do |x, y|
#   puts "s"
#   return x + y
# end

# like_map(2, 5).each do |x|
#   puts "Hello"
# end
smash = Hash.new { |hash, key| hash[key] = "a #{key} just got SMASHED!" }
smash[:plum] = "cannot smash."
smash[:watermelon]
p smash
