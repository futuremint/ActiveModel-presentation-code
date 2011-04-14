# Basically just gives you a method_missing that hits @attributes
class BlinkerFluid
  include ActiveModel::AttributeMethods

  # Call attribute_method_* before the method below
  # See http://api.rubyonrails.org/classes/ActiveModel/AttributeMethods/ClassMethods.html
  #   for all of your options
  define_attribute_methods [:name, :amount]

  attr_accessor :name, :amount

  def attributes
    {name: name, amount: amount}
  end
end

if __FILE__ == $0
  joke = BlinkerFluid.new
  joke.name = 'Redline'
  joke.amount = '2 oz.'
  puts "BlinkerFluid attributes: #{joke.attributes}"
end
