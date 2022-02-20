describe '#f(x)' do
  context 'when passed argument equal 2.6e-08' do
    it "returns a good approximation of f(x)" do
    x = 2.6e-08
    expect(f(x)).to eq 1.29999999155e-08
    end
  end

  context 'when passed argument equal 0' do
    it "returns a good approximation of f(x)" do
      x = 2.6e-08
      expect(f(x)).to eq 1.29999999155e-08
    end  
  end
end