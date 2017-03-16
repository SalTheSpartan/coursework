# require_relative 'app.rb'

def basic_calculator
  puts 'welcome to basic calculator'
  puts "Calculator 1.0 \nEnter 'q' to quit."

  while true
    print ">> "
    str = gets.chomp.split(" ")  # splits into array, rejects blanks
    return if str[0] == 'q'      # quit if first element is 'q'

    operand1 = str[0].to_f
    operand2 = str[2].to_f
    operator = str[1].to_sym

    case operator
    when :+ then puts operand1 + operand2
    when :- then puts operand1 - operand2
    when :* then puts operand1 * operand2
    when :/ then puts operand1 / operand2
    when :% then puts operand1 % operand2

    else
      puts "invalid input"
    end
  end

end

# if __FILE__ == $0     # if run as script, start calc: see http://j.mp/HOTGq8
#   main_menu
# end
