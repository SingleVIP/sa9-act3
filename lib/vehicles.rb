class Vehicle
  attr_reader :max_speed, :mileage, :capacity

  def initialize(max_speed, mileage, capacity)
    @max_speed = max_speed
    @mileage = mileage
    @capacity = capacity
  end

  def fare
    raise NotImplementedError, "The method 'fare' must be implemented in a subclass."
  end

  def m1
    puts "I am a generic m1() from the base Class Vehicle"
  end

  def to_s
    "From the Vehicle __str__ #{@max_speed}, #{@mileage}, #{@capacity}"
  end
end
