describe 'calculate number of books' do
  it 'return a summ of books category A and B' do
    b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
    c = ["A", "B"]
  expect(stockList(b, c)).to eql("(A : 200) - (B : 1140)")
  end

  it 'return result 0 if is not any book category W' do
    b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
    c = ["W"]
    expect(stockList(b,c)).to eql("(W : 0)")
  end
end
