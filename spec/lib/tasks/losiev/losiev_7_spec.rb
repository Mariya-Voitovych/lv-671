RSpec.describe 'check_exam' do
  subject { check_exam(arr1, arr2) }

  context 'when result is positive' do
    let(:arr1) { %w[a a b b] }
    let(:arr2) { %w[a a a c] }
    it 'returns result' do
      expect(subject).to eq 6
    end
  end

  context 'when result is negative' do
    let(:arr1) { %w[a a b b] }
    let(:arr2) { %w[c c c c] }
    it 'returns 0' do
      expect(subject).to eq 0
    end
  end
end
