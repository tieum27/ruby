require 'rspec'
require_relative 'tesla'

# Story: As a programmer, I can make a Tesla car.
describe "Tesla" do
  it "need to be real" do
    expect{Tesla.new}.to_not raise_error
    expect(Tesla.new.wheels).to be 4
  end
end

# Story: As a programmer, I can honk the horn of Tesla - "Beep-bee-bee-boop-bee-doo-weep".
describe "Tesla will honk" do
  it "and needs to display Beep-bee-bee-boop-bee-doo-weep" do
    expect(Tesla.new.honk_horn).to be_a String
    expect(Tesla.new.honk_horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end
end

# Story: As a programmer, I can speed my Teslas up by 10 km/h per acceleration.
describe "Accelaration" do
  it "speed up the Tesla by 10 per accelaration" do
    tesla1 = Tesla.new
    # expect(tesla1.speed).to be 0
    # tesla1.accel
    # expect(tesla1.speed).to be 10
    expect { tesla1.accel }.to change { tesla1.speed }.by(10)
  end
end

# Story: As a programmer, I can slow my Teslas down by 7 km/h per braking.
describe "Slow down Tesla" do
  it "speed - 7 per brake" do
    tesla1 = Tesla.new
    expect { tesla1.brake }.to change { tesla1.speed }.by(-7)
  end
end
