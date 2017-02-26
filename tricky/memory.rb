class Settings

  @setting = {}

  def self.all
    @setting
  end

  def self.[](key)
    all[key]
  end

  def self.[]=(key, value)
    all[key] = value
  end
end

Settings[:sourabh] = 2 * 4

p Settings[:sourabh]
