require_relative '../string_calculator'

RSpec.describe StringCalculator do
  let(:calculator) { StringCalculator.new }

  describe "#add" do
    context "blank string" do
      it "returns 0 for blank string" do
        expect(calculator.add("")).to eq(0)
      end

      it "returns 0 for nil" do
        expect(calculator.add(nil)).to eq(0)
      end

    end
  end
end
