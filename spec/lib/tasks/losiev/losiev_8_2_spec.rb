RSpec.describe "converter" do
  it "should convert miles per imperial gallon into kilometers per liter correctly" do
    expect(converter(12)).to eq 4.25
    expect(converter(0)).to eq 0
    expect(converter(18)).to eq 6.37
  end
end