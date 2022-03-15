# frozen_string_literal: true

describe 'increment_string(input)' do
  context 'given string containing only number'
  it 'returns incremented number' do
    expect(increment_string('21')).to eql('22')
  end

  context 'given string containing number in the end'
  it 'returns string with incremented number' do
    expect(increment_string('value102')).to eql('value103')
  end

  context 'given string containing zero(s) before number in the end'
  it 'returns incremented number' do
    expect(increment_string('value01050')).to eql('value01051')
  end

  context 'given string without number'
  it 'returns incremented number' do
    expect(increment_string('value')).to eql('value1')
  end
end
