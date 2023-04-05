require './lib/passenger'

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

end

