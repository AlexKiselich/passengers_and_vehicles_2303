require './lib/passenger'
require 'pry'

RSpec.describe Passenger do
  it 'exists' do

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})   
  
    expect(charlie).to be_a Passenger
    end

  it '#has attributes' do

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

    expect(charlie.name).to eq("Charlie")
    expect(taylor.age).to eq(12)
  end

  it 'is an adult' do

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

    expect(taylor.adult?).to eq(false)
    expect(charlie.adult?).to eq(true)
  end

  it 'can become a driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 

    expect(charlie.driver?).to eq(false)

    charlie.driver

    expect(charlie.driver?).to eq(true)
  end
end

