require './files_to_test/formatting_decimal_places'

describe '.two_decimal_places' do
  it 'return round number to two decimal places' do
    expect(two_decimal_places(1.2211)).to eql(1.22)
  end
end
