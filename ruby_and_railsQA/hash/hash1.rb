class Settings

  @setting = {}
  attr_accessor :setting

  def self.all
    setting
  end

  def self.[](key)
    all[key]
  end

  def self.[]=(key, value)
    all[key] = value
  end
end

Settings[:gk] = 2 * 4

p Settings[:gk]
