# frozen_string_literal: true

describe 'square_or_square_root' do
  it 'get root and square' do
    expect(square_or_square_root([1, 2, 3, 4, 5, 6, 7])).to eq([1, 4, 9, 2, 25, 36, 49])
  end
end
