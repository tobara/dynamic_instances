class GenericEntity

  def initialize(data)
    data.each do |name, value|
      self.class.send(:define_method,name) { instance_variable_set("@#{name}", value)}
    end
  end
end
