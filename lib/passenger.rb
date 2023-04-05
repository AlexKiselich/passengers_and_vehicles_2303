class Passenger
attr_reader :name, :age, :driver
  def initialize(info)
    @name = info["name"]
    @age = info["age"]
    @driver = false
  end

  def adult?
    if self.age >= 18
      true
    else false
    end
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end

end
