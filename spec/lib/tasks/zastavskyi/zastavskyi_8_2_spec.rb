describe '#dna_to_rna(dna)' do
  context 'when dna passed' do
    it "returns correct rna" do
    elems = "TAGCTAGC"
    expect(dna_to_rna(elems)).to eq "UAGCUAGC"
    end
  end

  context 'when wrong dna passed' do
    it "returns empty string" do
      elems = "WAGC"
      expect(dna_to_rna(elems)).to eq ""
    end  
  end
end