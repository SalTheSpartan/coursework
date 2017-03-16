class BananaShop 

  attr_accessor :opened_in, :name, :staff
  attr_reader :current_balance

  def initialize name, opened_in
    @name = name
    @opened_in = opened_in
    @staff = []
    @current_balance = 0.0
    @inventory = 0 
  end

  def buy_banana 
    @current_balance = @current_balance + 0.10
  end

end
