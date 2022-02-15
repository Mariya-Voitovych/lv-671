require 'rspec'
require '/home/mariya/Documents/SoftServe/tests_for_katas/8My head is at the wrong end'

describe "fix_the_meerkat" do
  it "switch first and last arrays elements" do
    expect(fix_the_meerkat(['last', 'middle', 'first'])).to eq(['first', 'middle', 'last'])
    expect(fix_the_meerkat([1,2,1])).to eq([1,2,1])
  end  
end  
