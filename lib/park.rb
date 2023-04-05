class Park
  attr_reader :unigue_name, :admission_price, :vehicles, :passengers
  def initialize(unigue_name, admission_price)
    @unigue_name = unigue_name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers << vehicle.passengers
    @passengers.flatten!
  end

  

  

end
