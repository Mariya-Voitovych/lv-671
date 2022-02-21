describe '#multiplication_table(size)' do
  context 'when passed argument equal 1' do
    it "creates 1x1 table" do
      size = 1
      expect(multiplication_table(size)).to eq [[1]]
    end
  end

  context "when passed argument equal 5" do
    it "creates 5x5 table" do 
      size = 5
      expect(multiplication_table(size)).to  eq [
      [1, 2, 3, 4, 5],
      [2, 4, 6, 8, 10],
      [3, 6, 9, 12, 15],
      [4, 8, 12, 16, 20],
      [5, 10, 15, 20, 25]] 
    end
  end
  
  context 'when passed argument equal 0' do
    it "returns empty array" do
      size = 0
      expect(multiplication_table(size)).to eq []
    end
  end
end
