require 'rspec'
require_relative 'toyota'


  # Story: As a programmer, I can make a Toyota car.
  # Hint: Test that class Toyota which inherits from class Car can be created.

  describe "Toyota" do
    it "need to be real" do
      expect{Toyota.new}.to_not raise_error
      expect(Toyota.new.wheels).to be 4
    end
  end

# Story: As a programmer, I can honk the horn of a Toyota car which makes the sound "whoop".
  describe "Toyota will honk" do
    it "and needs to display whoop" do
      expect(Toyota.new.honk_horn).to be_a String
      expect(Toyota.new.honk_horn).to eq "Whoop"
    end
  end

  # Story: As a programmer, I can speed my Toyotas up by 7 km/h per acceleration.
  describe "Accelaration" do
    it "speed up the Toyota by 7 per accelaration" do
      toyota1 = Toyota.new
      expect { toyota1.accel }.to change { toyota1.speed }.by(7)
    end
  end

  # Story: As a programmer, I can slow my Toyotas down by 5 km/h per braking.
  describe "Slow down toyota" do
    it "speed - 5 per brake" do
      toyota1 = Toyota.new
      expect { toyota1.brake }.to change { toyota1.speed }.by(-5)
    end
  end
