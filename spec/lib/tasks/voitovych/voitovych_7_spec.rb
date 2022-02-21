describe "#series_sum " do
    it "returns the sum of following series upto nth term(parameter)" do    
      expect(kata.series_sum(1)).to eq "1.00"
    end
    it "returns the sum of following series upto nth term(parameter)" do   
      expect(kata.series_sum(2)).to eq "1.25"
    end
    it "returns the sum of following series upto nth term(parameter)" do   
      expect(kata.series_sum(0)).to eq "0.00"
    end
end