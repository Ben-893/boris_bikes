# The docking station for bikes in the Boris Bike project.
require_relative "bike"

class DockingStation

  attr_reader :capacity
  attr_reader :bike

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bike = []
  end


  def dock(bik)
    fail "Docking station full" if full?
    bike << bik
  end


  def release_bike
    fail "No bikes available" if empty?
    bike.pop
  end




  def full?
bike.count >= capacity
end

  def empty?
bike.empty?
  end
end

#Hello Nabil <3