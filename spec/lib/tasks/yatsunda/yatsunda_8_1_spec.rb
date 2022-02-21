describe '#find_difference(a, b)' do
  context 'given identical arrays'
  it 'returns 0' do
    expect(find_difference([1, 1, 1], [1, 1, 1])).to eql(0)
  end

  context 'given float numbers in arrays'
  it 'returns valid result' do
    expect(find_difference([1, 1.5, 3], [1.5, 1.5, 1.5])).to eql(1.125)
  end

  context 'given standart values'
  it 'returns valid result' do
    expect(find_difference([100, 200, 400], [500, 800, 1000])).to eql(392_000_000)
  end
end
