require 'vehicles'
RSpec.describe Vehicle do
  let(:vehicle) { Vehicle.new(120, 15000, 5) }

  describe "#initialize" do
    it "sets the max_speed, mileage, and capacity attributes" do
      expect(vehicle.max_speed).to eq(120)
      expect(vehicle.mileage).to eq(15000)
      expect(vehicle.capacity).to eq(5)
    end
  end

  describe "#fare" do
    it "raises NotImplementedError when called on the base class" do
      expect { vehicle.fare }.to raise_error(NotImplementedError)
    end
  end

  describe "#m1" do
    it "prints a message indicating it's a generic method from Vehicle" do
      expect { vehicle.m1 }.to output("I am a generic m1() from the base Class Vehicle\n").to_stdout
    end
  end

  describe "#to_s" do
    it "returns a string representation of the vehicle" do
      expect(vehicle.to_s).to eq("From the Vehicle __str__ 120, 15000, 5")
    end
  end
end
