# frozen_string_literal: true

describe '#get_middle(s)' do
  context 'given odd-length string (latin)'
  it 'returns single middle character' do
    expect(get_middle('abcde')).to eql('c')
  end

  context 'given odd-length string (cyrillic)'
  it 'returns single middle character' do
    expect(get_middle('абвгд')).to eql('в')
  end

  context 'given even-length string (latin)'
  it 'returns two middle characters' do
    expect(get_middle('abcd')).to eql('bc')
  end

  context 'given even-length string (cyrillic)'
  it 'returns two middle characters' do
    expect(get_middle('абвг')).to eql('бв')
  end
end
