# Ceci n'est pas une pipe
class UnePipe
  extend ActiveModel::Naming
end

if __FILE__ == $0
  puts "UnePipe.model_name #{UnePipe.model_name}"
  puts "UnePipe.model_name.human #{UnePipe.model_name.human}"
end
