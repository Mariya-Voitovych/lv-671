RSpec.describe "zeros" do
  it "returns number of trailing zeros of N!" do

      expect(zeros(2)).to eq 0
      expect(zeros(100)).to eq 24
      expect(zeros(10)).to eq 2
      expect(zeros(25)).to eq 6
      expect(zeros(15)).to eq 3

  end
end

