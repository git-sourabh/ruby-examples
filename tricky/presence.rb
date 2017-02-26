friends = [4, 8, 3, 5]
user_ids = [3, 5]
tt = []
tt << (friends | user_ids).reject { |id| friends.include? id }

p !tt.flatten.any?
