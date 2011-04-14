class FruityPebbles
  # You can also indlue Serialization if you want your own format
  include ActiveModel::Serializers::JSON
  include ActiveModel::Serializers::Xml

  attr_accessor :name

  def attributes
    @attributes ||= {'name' => 'nil'}
  end
end

if __FILE__ == $0
  cereal = FruityPebbles.new
  puts cereal.serializable_hash   # => {"name"=>nil}
  puts cereal.as_json             # => {"name"=>nil}
  puts cereal.to_json             # => "{\"name\":null}"
  puts cereal.to_xml 
end
