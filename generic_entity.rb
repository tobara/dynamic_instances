class GenericEntity

  def initialize(data)
    data.each do |attr, value|
      instance_variable_set "@#{attr}", value
      define_singleton_method(attr) { instance_variable_get "@#{attr}" }
    end
  end
end
