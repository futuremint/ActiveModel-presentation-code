# Requires naming module
class KneuterValve
  extend ActiveModel::Naming

  def initialize
    @errors = ActiveModel::Errors.new(self)
  end

  attr_accessor :speed
  attr_reader   :errors

  def validate!
    errors.add(:speed, "can not be 0") if speed < 1
  end

  def KneuterValve.human_attribute_name(attr, options = {})
    "Speed"
  end
end

if __FILE__ == $0
  joke = KneuterValve.new
  joke.speed = -99
  puts "joke.errors #{joke.errors.inspect}"
  joke.validate!
  puts "joke.errors after validate #{joke.errors.inspect}"  
end
