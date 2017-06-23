require 'rspec'
require_relative 'car'

# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.
describe "Car" do
  it "need to be real" do
    expect{Car.new}.to_not raise_error
  end
end

# Story: As a programmer, I can tell how many wheels a car has; default is four.
# Hint: initialize the car to have four wheels, then create a method to return the number of wheels.
describe "number of wheels" do
  it "need to be four" do
    expect(Car.new.wheels).to be 4
  end
end

# Story: As a programmer, I can honk the horn.
# Hint: When I call honk_horn, I get a "BEEP!".
describe "I can honk" do
  it ", honk the horn" do
    expect(Car.new.honk_horn).to be_a String
    expect(Car.new.honk_horn).to eq "BEEP!"
  end
end

# Story: As a programmer, I can tell which model year a vehicle is from. Model years never change.
# Hint: Make model year part of the initialization.
describe "Model Year" do
  it "the model year never change" do
    expect(Car.new.model_year).to be_a Fixnum
  end
end

# Story: As a programmer, I can turn on and off the lights on a given Vehicle.
# Hint: Create method(s) to allow programmer to turn lights on and off. Which class are the methods in?
describe "Lights on" do
  it "the lights should turn on and off" do
    expect(Car.new.lights_on).to be(true).or be(false)
  end
end

# Story: As a programmer, I can signal left and right. Turn signals starts off.
describe "Turn Left or Right" do
  it "the turn signal should be on or off" do
    expect(Car.new.turn_left).to be(true).or be(false)
    expect(Car.new.turn_right).to be(true).or be(false)
  end
end

# Story: As a programmer, I can determine the speed of a car. Speed starts at 0 km/h.
describe "Speed" do
  it "The inital speed should be 0" do
    expect(Car.new.speed).to be_a Fixnum
    expect(Car.new.speed).to be 0
  end
end

# Story: As a programmer, I can call upon a car to tell me all it's information.
# Hint: Implement to_s on one or more classes. You can call a super class's to_s with super.
describe "Recall info on the car" do
  it "call upon all the info of the car" do
    car1 = Car.new
    puts car1.to_s
    expect(car1.to_s).to be_a String
  end
end
