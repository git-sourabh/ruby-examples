# require 'rails/generators/active_record/migration/migration_generator'
# class MultipleDatabaseMigration < ActiveRecord::Generators::MigrationGenerator; end
class Ancestor; end
[:A, :B].each do |class_name|
  self.class.const_set(class_name,
                        Class.new(Ancestor) do
                          def initialize(var)
                            p "#{self.class} initialized with #{var}"
                          end
                        end
                      )
  Kernel.const_get(class_name.to_s.capitalize).new('')
end
puts A.superclass
puts Ancestor.superclass
# puts Module.new.methods
# --------------------------



# self
#   .class
#   .const_set(
#     :A,
#     Class.new(Ancestor) do
#       source_root File.join(File
#                             .dirname(ActiveRecord::Generators::MigrationGenerator
#                             .instance_method(:create_migration_file)
#                             .source_location.first), 'templates')
      
#       def create_migration_file
#         set_local_assigns!
#         validate_file_name!
#         migration_template @migration_template,
#                            "#{class_name}/migrate/#{file_name}.rb"
#       end
#     end
#   )
#   Kernel.const_get(class_name.to_s.capitalize).new('')
