require 'rspec'
require '/home/mariya/Documents/SoftServe/tests_for_katas/6Build a pile of Cubes'

describe 'find_nb' do
  context 'when pile from cubes not exists' do
    it 'return -1' do
      expect(find_nb(10)).to eq(-1)
    end
  end

  context 'when pile from cubes exists' do
    it 'return number of cubes' do
      expect(find_nb(36)).to eq(3)
    end
  end
end
