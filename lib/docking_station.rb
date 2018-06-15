# The docking station for bikes in the Boris Bike project.
require_relative "bike"

class DockingStation
  attr_reader :bike
  DEFAULT_CAPACITY = 20

  def initialize
    @bike = []

  end

  def dock(bike)
    fail "Docking station full" if full?
    @bike << bike
  end


  def release_bike
    fail "No bikes available" if empty?
    @bike.pop
  end

private

def full?
@bike.count >= DEFAULT_CAPACITY
end

def empty?
@bike.empty?
end

end
