require_relative 'car'

class Toyota  < Car
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

  # Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
  def honk_horn

    @honk_horn = "Whoop"
  end

  # Story: As a programmer, I can speed my Toyota up by 7 km/h per acceleration.
  def accel
    @speed += 7
  end

  # Story: As a programmer, I can slow my Toyota down by 5 km/h per braking.
  def brake
    @speed -= 5
  end


end
