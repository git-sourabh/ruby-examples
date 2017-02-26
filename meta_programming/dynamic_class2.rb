# require 'rails/generators/active_record/migration/migration_generator'
class A
end

class MultipleDatabaseMigration <  end
class Ancestor; end
[:A, :B].each do |class_name|
  self.class.const_set(class_name,
                        Class.new(Ancestor) do
                          def initialize(var)
                            p "#{self.class} initialized with #{var}"
                          end
                        end
                      )
  # Kernel.const_get(class_name.to_s.capitalize).new("")
end
A.new(1)
