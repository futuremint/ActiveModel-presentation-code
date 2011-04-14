# Provides changed?, style_changed?
class MufflerBearing
  include ActiveModel::Dirty

  define_attribute_methods [:style]

  # The style of your muffler bearing, chrome, strawberry, import, etc.
  def style
    @style
  end

  def style=(val)
    style_will_change! unless val == @style
    @style = val
  end

  def save
    @previously_changed = changes
    @changed_attributes.clear
  end
end

if __FILE__ == $0
  joke = MufflerBearing.new
  joke.style = 'Chrome'
  puts "joke.style_changed? #{joke.style_changed?}"
end
