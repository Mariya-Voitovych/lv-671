RSpec.describe 'get_volume_of_cuboid' do
  subject { get_volume_of_cuboid(length, width, height) }
  context 'when parameters are passed' do
    let(:length) { 4 }
    let(:width) { 5 }
    let(:height) { 10 }
    it 'returns the volume of the cuboid' do
      expect(subject).to eq 200
    end
  end
end