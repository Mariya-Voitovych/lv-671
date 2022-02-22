RSpec.describe '#smallest' do
  context 'when n is positive number and consists of digits' do
    it 'return an array that consists of the smallest number and the index of the digit that you took' do
      expect(smallest(261235)).to eq([126235, 2, 0])
      expect(smallest(239947)).to eq([239947, 1, 1])
    end
  end
end
