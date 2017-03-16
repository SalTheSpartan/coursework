require_relative "./car.rb"
require_relative "./tax_bands.rb"


steves_car = Car.new "blue", "BMW", "320i", 2.0, "Estate"
# steves_car.colour = "blue"
# steves_car.make = "BMW"
# steves_car.model = "320i"
# steves_car.engine_size = 2.0
# steves_car.body_type = "Estate"

puts steves_car.description
tax_band = TaxBands.get_tax_band steves_car.engine_size
puts "the tax band for steve is #{tax_band}"
