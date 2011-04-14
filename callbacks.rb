class SnipeHunt
  extend ActiveModel::Callbacks
  define_model_callbacks :create

  def create
    run_callbacks :create do
      find_snipe
    end
  end

  def find_snipe
    # Stuff
    puts "snipe found!"
  end
end

if __FILE__ == $0
  SnipeHunt.new.create
end
