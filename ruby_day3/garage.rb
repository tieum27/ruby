# require_relative 'car'
require_relative 'tata'
require_relative 'tesla'
require_relative 'toyota'

class Garage
  def initialize
    @garage = []
  end

  def create_collection (type, year, name)
    # puts "Enter car type (Tesla, Toyota, Tata)"
    # car_type = gets.
    # puts car_type
    # puts
    # puts "Enter a name for the" + car_type
    # car_name = gets.chomp
    # puts "Enter a year for the" + car_type
    # car_year = gets.chomp
    car1 = type.new(name, year)
    # car1.make_toyota toyota_name
    # @garage << {"#{car1.surname}" => "#{car1.model_year}"}
    # or
    @garage << car1
  end
end

# create_collection
# chomp.capitalize.chomp('"').chomp('"')
