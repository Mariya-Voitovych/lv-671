require './files_to_test/new_argument'

describe 'return donation' do
  it 'return newavg if arr.empty' do
    expect(new_avg([], 2)).to eql(2)
  end
  it 'return newavg if arr.empty' do
    expect(new_avg([0,0], 2)).to eql(6)
  end
end
