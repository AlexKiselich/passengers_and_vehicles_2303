class Park
  attr_reader :unigue_name, :admission_price, :vehicles, :passengers, :revenue
  def initialize(unigue_name, admission_price)
    @unigue_name = unigue_name
    @admission_price = admission_price
    @vehicles = []
    @passengers = []
    @revenue = 0
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
    @passengers << vehicle.passengers
    @passengers.flatten!
  end

  def charge_vehicle(vehicle)
    @revenue += vehicle.num_adults * admission_price
  end


  def all_attendees
    names = []
    @passengers.map do |passenger|
      names << passenger.name
    end
 names.sort.join(", ")
  end
end
