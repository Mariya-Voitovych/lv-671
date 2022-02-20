RSpec.describe '#easyline_calc' do
  context 'when n (as a parameter) equals 0' do
    it 'return 1' do
      expect(easyline_calc(0)).to eq([1])
    end
  end
end

RSpec.describe '#easyline' do
  context 'when parameter is higher than 0' do
    it 'return the sum of the squares of the binomial coefficients on line n' do
      expect(easyline(13)).to eq(10400600)
      expect(easyline(21)).to eq(538257874440)
    end
  end
end
