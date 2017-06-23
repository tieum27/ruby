require_relative 'car'

class Tesla < Car
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

  # Story: As a programmer, I can honk the horn of a Tesla car which makes the sound "Beep-bee-bee-boop-bee-doo-weep".
  def honk_horn
    @honk_horn = "Beep-bee-bee-boop-bee-doo-weep"
  end

# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
  def accel
    @speed += 10
  end

  # Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
  def brake
  @speed -= 7
  end


end
