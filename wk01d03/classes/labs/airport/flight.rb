# from
#   - to
#   - airline
#   - passengers

class Flight

attr_accessor :from, :to, :airline, :passengers

  def initialize from, to, airline
      @from = from
      @to = to
      @airline = airline
      @passengers = []

  end

  def description
      "#{self.colour}, #{self.make}, #{self.model}, #{self.engine_size}, #{self.body_type}"
  end

end
