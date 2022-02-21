describe "#find(seq)" do
  context "when seq passed with 1 missing element" do
    it "returns skipped element" do
      expect(find([3, 9, 1, 11, 13, 5])).to eq(7)
    end 
  end
  
  context "when empty array passed" do
    it "returns empty array" do
      expect(find([])).to eq([])
    end
  end
 
  context "when array with only 1 element passed" do
    it "returns empty array" do
      expect(find([4])).to eq([])
    end 
  end
end

