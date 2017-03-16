require_relative "./BananaShop.rb"
require_relative "./StaffMember.rb"

shop1 = BananaShop.new("niall's shop", "2013")

shop1.staff << StaffMember.new('Ollie', '12/1/85')
shop1.staff << StaffMember.new('steve', '12/1sdfsd/85')
shop1.staff << StaffMember.new('lexie', '12/1/sdf85sd')
shop1.staff << StaffMember.new('tim', '12/1/sdfsd85')
shop1.staff << StaffMember.new('sdf', '12/1sdfsdf/85')


puts shop1.current_balance
shop1.buy_banana
shop1.buy_banana
shop1.buy_banana
shop1.buy_banana
shop1.buy_banana
puts shop1.current_balance
