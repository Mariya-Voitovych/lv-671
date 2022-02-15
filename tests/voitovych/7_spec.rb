require 'rspec'
require '/home/mariya/Documents/SoftServe/tests_for_katas/7Recursive Replication'

describe "replicate" do
  context "when given positive integer parametr" do
    it "replicate number five times" do
      expect(replicate(5,9)).to eq([9,9,9,9,9])
    end  
  end 
  
  context "when given not valid parameter" do
    it "zero return empty array" do
      expect(replicate(0,9)).to eq([])
    end  
  
    it "negative return empty array" do
      expect(replicate(-6,9)).to eq([])
    end
  end
end  