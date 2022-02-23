RSpec.describe 'converter' do
  subject { converter(mpg) }
  context 'when paramater is passed' do
    let(:mpg) { 10 }
    it 'returns converted value' do
      expect(subject).to eq 3.54
    end
  end
end