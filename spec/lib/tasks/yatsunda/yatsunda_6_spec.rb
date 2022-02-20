describe '#expanded_form(num)' do
  context 'given number without zero'
  it 'returns valid result' do
    expect(expanded_form(123)).to eql('100 + 20 + 3')
  end

  context 'given number with two zeros'
  it 'returns valid result' do
    expect(expanded_form(102_030)).to eql('100000 + 2000 + 30')
  end

  context 'given number with 10 digits'
  it 'returns valid result' do
    expect(expanded_form(1_234_567_890)).to eql('1000000000 + '\
        '200000000 + 30000000 + 4000000 + 500000 + '\
        '60000 + 7000 + 800 + 90')
  end
end
