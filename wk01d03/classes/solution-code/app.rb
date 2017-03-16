require_relative "./calc_methods.rb"

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'i'
    bmi_calc
  end

  response = menu
end
