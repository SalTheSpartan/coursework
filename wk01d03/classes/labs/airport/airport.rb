class Airport

attr_accessor :name, :country, :terminals

  def initialize name, country
      @name = name
      @country = country
      @terminals = []

  end

  def description
      "#{self.colour}, #{self.make}, #{self.model}, #{self.engine_size}, #{self.body_type}"
  end


private
  def calculate_tax_band
   @tax_band = @engine_size > 1.6 ? "A" : "B"
  end
end
