class BrainGuy < ActiveModel::Observer
  def after_create(joke)
    # Do something with joke
    puts "So a guy walks into a doctor's office..."
  end
end
