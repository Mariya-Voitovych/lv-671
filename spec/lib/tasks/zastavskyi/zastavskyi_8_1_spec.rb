describe '#remove_exclamation_marks(input_string)' do
  context "basic string passed" do
    it "remove all exclamation marks from the end of sentence" do
      start_string = "Hello! Hello!"
      expected = "Hello! Hello"
      expect(remove_exclamation_marks(start_string)).to eq(expected)  
    end
  end

  context 'empty string passed' do
    it "returns '' for empty string" do 
      start_string = ""
      expect(remove_exclamation_marks(start_string)).to eq ""
    end
  end
end
