describe '#billboard(name, price=30)' do
  context 'given 0 as price'
  it 'returns 0' do
    expect(billboard('Billboard', 0)).to eql(0)
  end

  context 'given Billboard as the name and 100 as the price'
  it 'returns valid value 900' do
    expect(billboard('Billboard', 100)).to eql(900)
  end

  context 'given nil as name'
  it 'returns exception' do
    expect { billboard(nil) }.to raise_error(NoMethodError)
  end

  context 'given only Billboard as name'
  it 'returns valid value 270' do
    expect(billboard('Billboard')).to eql(270)
  end
end
