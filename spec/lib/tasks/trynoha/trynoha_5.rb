require './files_to_test/perimetr_in_square_in_a_rectangle'

describe 'summ of perimetrs' do
  it 'summ of squares' do
    expect(perimeter(5)).to eql(80)
    expect(perimeter(7)).to eql(216)
  end
end
