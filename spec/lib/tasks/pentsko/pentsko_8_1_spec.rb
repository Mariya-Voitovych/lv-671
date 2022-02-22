RSpec.describe '#duty_free' do
  context 'show how many bottles of whiskey will cover the cost of the holiday' do
    it 'returns number' do
      expect(duty_free(17, 10, 500)).to eq(294)
      expect(duty_free(10, 20, 30)).to eq(15)
    end
  end
end
