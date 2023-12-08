class SingletonObject
  @@instance = SingletonObject.new

  def self.instance
    return @@instance
  end

  private_class_method :new
end

example = SingletonObject.instance
