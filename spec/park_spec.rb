require './lib/vehicle'
require './lib/passenger'
require './lib/park'
require 'pry'

RSpec.describe Park do
  it 'exists' do
    park1 = Park.new("Washington Park", 20)

    expect(park1).to be_a Park
  end

  it 'can count vehicles that enter park' do
    park1 = Park.new("Washington Park", 20)

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2000", "Jeep", "Wrangler")

    park1.add_vehicle(vehicle1)
    park1.add_vehicle(vehicle2)

    expect(park1.vehicles.count).to eq(2)
  end

  it 'can list all passengers' do
    park1 = Park.new("Washington Park", 20)

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2000", "Jeep", "Wrangler")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})

    vehicle1.add_passenger(charlie)
    vehicle2.add_passenger(jude)
    vehicle2.add_passenger(taylor)

    park1.add_vehicle(vehicle1)
    park1.add_vehicle(vehicle2)

    expect(park1.passengers).to eq([charlie, jude, taylor])
  end

  it 'can calculate revenue' do
    park1 = Park.new("Washington Park", 20)

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2000", "Jeep", "Wrangler")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})

    vehicle1.add_passenger(charlie)
    vehicle2.add_passenger(jude)
    vehicle2.add_passenger(taylor)

    park1.add_vehicle(vehicle1)
    park1.add_vehicle(vehicle2)

    park1.charge_vehicle(vehicle1)
    park1.charge_vehicle(vehicle2)

    expect(park1.revenue).to eq(40)
  end

  it 'can list all attendees alphabetically' do
    park1 = Park.new("Washington Park", 20)

    vehicle1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle2 = Vehicle.new("2000", "Jeep", "Wrangler")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    jude = Passenger.new({"name" => "Jude", "age" => 20})

    vehicle1.add_passenger(charlie)
    vehicle2.add_passenger(jude)
    vehicle2.add_passenger(taylor)

    park1.add_vehicle(vehicle1)
    park1.add_vehicle(vehicle2)

    expect(park1.all_attendees).to eq("Charlie, Jude, Taylor")
  end

end

