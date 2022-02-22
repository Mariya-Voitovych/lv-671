RSpec.describe '#validate_usr' do
  context 'when username is valid' do
    it 'return true' do
      expect(validate_usr('helloworld')).to be true
      expect(validate_usr('p1pp1')).to be true
    end
  end
  context 'when username is not valid' do
    it 'return false' do
      expect(validate_usr('Abba')).to be false
      expect(validate_usr('VaLLLID&&&')).to be false
    end
  end
  context 'when empty string is given' do
    it 'return false' do
      expect(validate_usr('')).to be false
    end
  end
end
