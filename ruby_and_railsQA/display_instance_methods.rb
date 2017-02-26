require 'pry'
module Nameable
  def name
    "John"
  end
end

class User
  include Nameable
  def email
    "john@example.com"
  end
end

# binding.pry
excluded_parents = [BasicObject, Kernel, Object]

(User.ancestors-excluded_parents).each do |parent_class|
  puts parent_class
  parent_class.instance_methods(false).each do |method_name|
    method = parent_class.instance_method(method_name)
    script, line = method.source_location
    if script then
      puts "  #{method_name} # #{script} (line #{line})"
    else
      puts "  #{method_name}"
    end
  end
end

# User
#   email # source_code.rb (line 9)
# Nameable
#  name # source_code.rb (line 2)

# task_list = %i(
#   db:seed:testusers
#   db:seed:testorders
# )

# task_list.each do |task_name|
#   desc %(Runs rake #{task_name})
#   task task_name do
#     on primary fetch(:migration_role) do
#       within release_path do
#         with rails_env: fetch(:rails_env) do
#           execute :rake, task_name
#         end
#       end
#     end
#   end
# end
