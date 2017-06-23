require 'rspec'
require_relative 'tata'

# Story: As a programmer, I can make a Tata car.
# Story: As a programmer, I can honk the horn of a Tata car - "beep".
describe "Tata" do
  it "need to be real" do
    expect{Tata.new}.to_not raise_error
    expect(Tata.new.wheels).to be 4
  end
end

# Story: As a programmer, I can honk the horn of a Tata car which makes the sound "beep".
describe "Tata will honk" do
  it "and needs to display beep" do
    expect(Tata.new.honk_horn).to be_a String
    expect(Tata.new.honk_horn).to eq "beep"
  end
end
# Story: As a programmer, I can speed my Tatas up by 2 km/h per acceleration.
describe "Accelaration" do
  it "speed up the Tata by 2 per accelaration" do
    tata1 = Tata.new
    expect { tata1.accel }.to change { tata1.speed }.by(2)
  end
end

# Story: As a programmer, I can slow my Tatas down by 1.25 km/h per braking.
describe "Slow down Tata" do
  it "speed - 1.25 per brake" do
    tata1 = Tata.new
    expect { tata1.brake }.to change { tata1.speed }.by(-1.25)
  end
end
