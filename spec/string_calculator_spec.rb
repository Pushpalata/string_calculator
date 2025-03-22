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

      it "returns 0 for string with spaces" do
        expect(calculator.add("  ")).to eq(0)
      end
    end

    context "single number" do
      it "returns number if single number is passed" do
        expect(calculator.add("1")).to eq(1)
      end
    end

    context "two numbers" do
      it "returns sum when number passed comma separated" do
        expect(calculator.add("1,2")).to eq(3)
      end
    end

    context "multiple numbers" do
      it "returns 6 for '1,2,3'" do
        expect(calculator.add("1,2,3")).to eq(6)
      end

      it "returns 10 for '1,2,3,4'" do
        expect(calculator.add("1,2,3,4")).to eq(10)
      end
    end

    context "new lines instead of comma" do
      it "returns 6 for '1\n2,3'" do
        expect(calculator.add("1\n2,3")).to eq(6)
      end

      it "returns 10 for '1,2,3\n4'" do
        expect(calculator.add("1,2,3\n4")).to eq(10)
      end
    end

    context "different delimiters" do
      it "returns 3 for '//;\n1;2'" do
        expect(calculator.add("//;\n1;2")).to eq(3)
      end

      it "returns 3 for '//|\n1|2'" do
        expect(calculator.add("//|\n1|2")).to eq(3)
      end
    end

    context "Error on negative numbers" do
      it "raises error on negative numbers" do
        expect { calculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2,-3")
      end
    end

  end
end
