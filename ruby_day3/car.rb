class Car
  # Story: As a programmer, I can make a vehicle.
  # Hint: Test that Vehicle.new does not raise any errors.

  def initialize (wheels = 4 )
    @wheels = 4
    @lights_on = false
    @turn_left = false
    @turn_right = false
    @speed = 0

  end

  def speed
    @speed
  end

  def lights_on
    @lights_on = !@lights_on
  end

  def turn_left
  @turn_left = !@turn_left
  end

  def turn_right
    @turn_right = !@turn_right
  end

  # Story: As a programmer, I can honk the horn.
  # Hint: When I call honk_horn, I get a "BEEP!".
  def honk_horn
    @honk_horn = "BEEP!"
  end

  # Story: As a programmer, I can tell how many wheels a car has; default is four.
  # Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
  def wheels
    @wheels
  end

  def model_year
    @model_year
  end

  def to_s
  "#{@speed} #{@model_year} #{@lights_on} #{@turn_left} #{@turn_right}"
  end


end
