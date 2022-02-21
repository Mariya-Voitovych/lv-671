describe '#stray(numbers)' do
  context 'passed array with 1 different element' do 
    it "returns one different number" do 
      numbers = [1, 1, 2, 1, 1, 1, 1, 1]
      expect(stray(numbers)).to eq 2 
    end 
  end

  context 'passed array with no different element' do
    it "returns passed array" do
      numbers = [1,1,1,1]
      expect(stray(numbers)).to eq numbers
    end
  end
end
