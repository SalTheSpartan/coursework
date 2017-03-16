require_relative 'advanced_calculator.rb'
require_relative 'basic_calculator.rb'


def main_menu
  puts 'choose application...'

  menu = ['a. Advanced Calculator','b. Basic Calculator']

  p menu

  selection = gets.chomp

  puts selection

  case selection
  when 'a'
    advanced_calculator
  when 'b'
    basic_calculator
  end
end

main_menu
