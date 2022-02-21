describe "#divisible_by" do
    it "returns all numbers which are divisible" do    
        expect(kata.divisible_by([1,2,3,4,5,6], 2)).to eq [2,4,6]
    end
    it "returns all numbers which are divisible" do   
        expect(kata.divisible_by([0,1,2,3,4,5,6], 4)).to eq [0,4]
    end
end