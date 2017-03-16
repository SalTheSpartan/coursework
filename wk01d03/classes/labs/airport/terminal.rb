class Terminal

attr_accessor :name, :flights, :capacity

  def initialize name, capacity
      @name = name
      @capacity = capacity
      @flights = []
  end

end
