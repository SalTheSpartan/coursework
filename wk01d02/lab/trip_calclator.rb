# This feature asks the user for four inputs;
# distance, fuel efficiency (mpg),
# cost per gallon, speed and it will
# give you the time and price of your journey.
#
# **Example output:** "Your trip will take 3.5 hours and cost £255.33.""
#
# **Note:** For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG
# (i.e. a car that normally gets 30 mpg would only get 28 mpg if its speed were 61 mph.
# Yes this gets silly at high speed where mpg goes to zero or gets negative
# - how will you handle this?)

def trip_calculator

  puts 'enter distance (miles)'
  distance = gets.chomp.to_f

  puts 'enter fuel efficiency (mpg)'
  fuel_efficiency = gets.chomp.to_f

  puts 'enter cost per gallon'
  cost_per_gallon = gets.chomp.to_f

  puts 'enter speed (mph)'
  speed = gets.chomp.to_f

    if speed > 60
      fuel_efficiency = fuel_efficiency - (speed - 60)
    end

    if fuel_efficiency > 10
      puts "your trip will take #{distance / speed} hours and cost £#{(distance / fuel_efficiency) * cost_per_gallon}"
    elsif fuel_efficiency < 10
      fuel_efficiency = 10
      puts "your trip will take #{distance / speed} hours and cost £#{(distance / fuel_efficiency) * cost_per_gallon}"
    end

end

trip_calculator
