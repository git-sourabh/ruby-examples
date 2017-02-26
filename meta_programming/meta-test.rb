class Account
  attr_accessor :name, :email, :notes, :address

  def assign_values(values)
    values.each_key do |k, v|
      self.send("#{k}=", values[k])
      # self.name = value[k]
    end
  end
end

user_info = {
  name: 'Matt',
  email: 'test@gms.com',
  address: '132 random st.',
  notes: "annoying customer"
}

account = Account.new
account.assign_values(user_info)
# --------- Bad way --------------
# account.name = user_info[:name]
# account.address = user_info[:address]
# account.email = user_info[:email]
# account.notes = user_info[:notes]

# --------- Meta Programing way --------------
puts account.inspect
Contact GitHub 