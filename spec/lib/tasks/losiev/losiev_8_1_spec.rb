RSpec.describe "get_volume_of_cuboid" do
  it "returns correct volume value" do
    expect(get_volume_of_cuboid(1,1,1)).to eq 1
    expect(get_volume_of_cuboid(0,2,3)).to eq 0
    expect(get_volume_of_cuboid(2,2,2)).to eq 8
    expect(get_volume_of_cuboid(12345, 67890, 123456)).to eq 103_468_726_684_800
  end
end
