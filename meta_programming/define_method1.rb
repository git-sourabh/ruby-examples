class Model
  #attr_accessor :name, :email, :notes, :address
  def initialize
    @fields = @@all_fields
    @values = {}
  end

  def self.field(name)
    @@all_fields << name
    send(:define_method, name) do
      @@values[name]
    end

    send(:define_method, "#{name}=") do |value|
      @values[name] = value
    end
  end

  # def assign_values(values)
  #   values.each_key do |k, v|
  #     # Metaprogramming
  #     self.send("#{k}=", values[k])
  #     # self.name = value[k]
  #   end
  # end
end

class Account < Model
  field :balance
  field :address
  field :name
end

a = Account.new
a.balance = 1_000_000
a.address = '212 Main St.'
a.name = "Mr. Z"
a.inspect
# user_info = {
#   name: 'Matt',
#   email: 'test@gms.com',
#   address: '132 random st.',
#   notes: "annoying customer"
# }

# account = Account.new
# # --------- Bad way --------------
# # account.name = user_info[:name]
# # account.address = user_info[:address]
# # account.email = user_info[:email]
# # account.notes = user_info[:notes]

# # --------- Meta Programing way --------------
# account.assign_values(user_info)

# puts account.inspect
