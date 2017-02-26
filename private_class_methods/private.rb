class PrivateClassMethod
  # class << self
    private

    def self.private_method
      puts 'Will also through exception'
    end
  # end
end

PrivateClassMethod.private_method
