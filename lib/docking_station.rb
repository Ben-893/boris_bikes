# The docking station for bikes in the Boris Bike project.
require_relative "bike"

class DockingStation
DEFAULT_CAPACITY = 20
  attr_accessor :capacity


  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bike = []
  end


  def dock(bike)
    fail "Docking station full" if full?
    bike << bike
  end


  def release_bike
    fail "No bikes available" if empty?
    bike.pop
  end

private

  attr_reader :bike

  def full?
bike.count >= capacity
end

  def empty?
bike.empty?
  end
end
