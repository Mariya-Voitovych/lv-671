require 'bigdecimal'

describe '.Wilson_primes' do
  it 'returns 1 if n less 1' do
    expect(am_I_Wilson(5)).to eql(true)
    expect(am_I_Wilson(8)).to eql(false)
  end
end
