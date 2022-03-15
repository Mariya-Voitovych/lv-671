describe "#mant_exp" do
    it "floating-point system " do    
      expect(mant_exp(0.06, 10)).to eq "6000000000P-11"
    end
    it "floating-point system" do    
      expect(mant_exp(72.0, 12)).to eq "720000000000P-10"
    end
end