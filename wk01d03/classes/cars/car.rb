class Car

attr_accessor :colour, :make, :model, :engine_size, :body_type
attr_reader :tax_band
  def initialize colour, make, model, engine_size, body_type
      @colour = colour
      @make = make
      @model = model
      @engine_size = engine_size
      @body_type = body_type
      @tax_band = calculate_tax_band
  end

  def description
      "#{self.colour}, #{self.make}, #{self.model}, #{self.engine_size}, #{self.body_type}"
  end

private
  def calculate_tax_band
   @tax_band = @engine_size > 1.6 ? "A" : "B"
  end
end
