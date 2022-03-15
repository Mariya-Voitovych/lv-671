# frozen_string_literal: true

describe 'fix_the_meerkat' do
  it 'switch first and last arrays elements' do
    expect(fix_the_meerkat(%w[last middle first])).to eq(%w[first middle last])
    expect(fix_the_meerkat([1, 2, 1])).to eq([1, 2, 1])
  end
end
