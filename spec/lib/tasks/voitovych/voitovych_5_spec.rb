describe "#closest" do
    it "return closest " do    
      expect(kata.closest("")).to eq []
    end
    it "return closest" do    
      expect(kata.closest("456899 50 11992 176 272293 163 389128 96 290193 85 52")).to eq [[13, 9, 85], [14, 3, 176]]
    end
end