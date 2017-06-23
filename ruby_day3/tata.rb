require_relative 'car'

class Tata < Car
  def initialize (name, yr)
    @year = yr
    super
  end

  def surname
    @name = name
  end

  def model_year
    @year
  end

  # Story: As a programmer, I can honk the horn of a Tata car which makes the sound "beep".
  def honk_horn
    @honk_horn = "beep"
  end

  # Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
  def accel
    @speed += 2
  end

  # Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
  def brake
    @speed -= 1.25
  end

end
