RSpec.describe 'zeros' do
  subject { zeros(num) }

  context 'when positive number is given' do
    let(:num) { 24 }
    it 'returns number of trailing zeros if num!' do
      expect(subject).to eq 4
    end
  end

  context 'when not positive number is given' do
    let(:num) { -3 }
    it 'returns 0' do
      expect(subject).to eq 0
    end
  end
end