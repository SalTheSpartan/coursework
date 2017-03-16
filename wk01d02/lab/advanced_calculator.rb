def advanced_calculator
  puts 'choose action...'

  menu = ['a. Power','b. Square root']

  p menu

  selection = gets.chomp

  puts selection


  case selection
  when 'a'
    puts 'Enter number:'
        number = gets.chomp.to_f
    puts 'Enter Indecy:'
        indecy = gets.chomp.to_f
    message = number ** indecy
    puts message
  when 'b'
    puts 'Enter number'
     number = gets.chomp.to_f
     root = Math.sqrt(number)
     puts root
  end
end
