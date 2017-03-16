require_relative "./passenger.rb"
require_relative "./flight.rb"
require_relative "./airport.rb"
require_relative "./terminal.rb"

# steves_car = Car.new "blue", "BMW", "320i", 2.0, "Estate"
# # steves_car.colour = "blue"
# # steves_car.make = "BMW"
# # steves_car.model = "320i"
# # steves_car.engine_size = 2.0
# # steves_car.body_type = "Estate"
#
# puts steves_car.description
# tax_band = TaxBands.get_tax_band steves_car.engine_size
# puts "the tax band for steve is #{tax_band}"


def airport_init

  lax = Airport.new "LAX", "Los Angelas, USA"
  lax.terminals = [
  Terminal.new("South Terminal", 1000),
  Terminal.new("North Terminal" , 500)
  ]

  jfk = Airport.new "JFK", "New York, USA"
  jfk.terminals = [
  Terminal.new("South Terminal", 1000),
  Terminal.new("North Terminal", 500)
  ]
  jfk.terminals[0].flights = [
    Flight.new("JFK", "LHR", "Virgin"),
    Flight.new("JFK", "LAX", "AA")
  ]
  jfk.terminals[1].flights = [
    Flight.new("JFK", "CDG", "Air France"),
    Flight.new("JFK", "DBX", "Emirates")
  ]

  jfk.terminals[1].flights[0].passengers = [
    Passenger.new("Salman", "Khan", "yesterday"),
    Passenger.new("Osvaldo", "Calliari", "Day before yesterday")
  ]


  lhr = Airport.new "LHR", "London, England"
  lhr.terminals = [
  Terminal.new("Terminal 1", 500),
  Terminal.new("Terminal 2", 500),
  Terminal.new("Terminal 3", 500)
  ]
  cdg = Airport.new "CDG", "Paris, France"
  cdg.terminals = [
  Terminal.new("Terminal 1", 500),
  Terminal.new("Terminal 2", 500)
  ]
  dxb = Airport.new "DBX", "Dubai, UAE"
  dxb.terminals = [
  Terminal.new("Terminal A", 500),
  ]
  hnd = Airport.new "HND", "Tokyo, Japan"
  hnd.terminals = [
  Terminal.new("Terminal 1", 500),
  Terminal.new("Terminal 2", 500),
  Terminal.new("Terminal 3", 500)
  ]
  airport_list = [lax, jfk, lhr, cdg, dxb, hnd]

  puts "Select Airport"
  airport_list.each_with_index do |airport , index|
    puts "#{index} #{airport.name}"
  end
  airport_selection = gets.chomp.to_i
  airport_menu airport_list[airport_selection]
end

def list_flights airport
  airport.terminals.each_with_index do |terminal|
  puts "\n#{terminal.name} \n \nFrom To Airline"
   terminal.flights.each_with_index do |flight , index|
     puts "#{index} #{flight.from} #{flight.to} #{flight.airline}"
   end
  end
end

def list_terminals airport
  airport.terminals.each_with_index do |terminal, index|
   puts "#{index}) #{terminal.name}"
  end
end

def add_flight airport
  list_terminals airport
  puts "Select Terminal to Add Flight"
  terminal_selection = gets.chomp.to_i
  puts "Enter Destination"
  destination = gets.chomp
  puts "Enter Airline"
  airline = gets.chomp

  new_flight = Flight.new(airport.name, destination, airline)
  airport.terminals[terminal_selection].flights.push(new_flight)
  list_flights airport

end



def airport_menu airport
  puts "Make a selection
        1. List Flights
        2. List Terminals
        3. Add Flight
        4. Flight Menu"



  airport_menu = gets.chomp

  case airport_menu
  when "1"
    list_flights airport
  when "2"
    list_terminals airport
  when "3"
    add_flight airport
  when "4"
    flight_menu airport
  end
end

def terminal_menu
  case terminal_menu
  when "1"
    puts create_flight
  when "2"
    airport_menu
  end
end

def flight_menu airport

  puts "select terminal"
  list_terminals airport
  choice = gets.chomp.to_i

  puts "select flight"
  terminal = airport.terminals[choice]
  terminal.flights.each_with_index do |flight , index|
    puts "#{index} #{flight.from} #{flight.to} #{flight.airline}"
  end
  flight_index = gets.chomp.to_i
  puts "passenger list"
  terminal.flights[flight_index].passengers.each_with_index do |passenger , index|
    puts "#{index} #{passenger.first_name} #{passenger.last_name} #{passenger.dob}"
  end

  puts "passenger menu
        1. add passenger
        2. remove passenger"
  passenger_menu = gets.chomp

  case passenger_menu
  when "1"

    puts "insert first name"
    first_name = gets.chomp
    puts "insert last name"
    last_name = gets.chomp
    puts "insert date of birth"
    dob = gets.chomp
    terminal.flights[flight_index].passengers << Passenger.new(first_name, last_name, dob)
    terminal.flights[flight_index].passengers.each_with_index do |passenger , index|
    puts "#{index} #{passenger.first_name} #{passenger.last_name} #{passenger.dob}"
    end
    # add_passenger
  when "2"
    puts "select passenger"
    terminal.flights[flight_index].passengers.each_with_index do |passenger , index|
    puts "#{index} #{passenger.first_name} #{passenger.last_name} #{passenger.dob}"
    end
    passenger_index = gets.chomp.to_i
    terminal.flights[flight_index].passengers.delete_at(passenger_index)
    terminal.flights[flight_index].passengers.each_with_index do |passenger , index|
    puts "#{index} #{passenger.first_name} #{passenger.last_name} #{passenger.dob}"
    end
    # remove_passenger
  end
end

airport_init

# main_menu
