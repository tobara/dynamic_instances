gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'generic_entity'

class GenericEntityTest < Minitest::Test
  def test_generic_can_create_dog_entity
    dog = GenericEntity.new(:barks=>"obnoxiously", :bites=>"mildly", :color=>"black")

    assert_equal(dog.barks, "obnoxiously")
    assert_equal(dog.bites, "mildly")
    assert_equal(dog.color, "black")
  end

  def test_generic_can_create_car_entity
    car = GenericEntity.new(:color => "black", :engine => "V8")

    assert_equal(car.color, "black")
    assert_equal(car.engine, "V8")
  end
end
