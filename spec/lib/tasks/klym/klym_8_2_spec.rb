describe '#starting_mark(height)' do
  it "returns the best starting mark" do
    height = 1.75
    expect(starting_mark(height)).to eq 10.36  
  end
end