require 'C:\all\new_project\lv-671\katas\klym\8_1_klym.rb'

describe ".litres(time)" do
  context 'when passed integer value equal 5' do
    it "returns litres of water per hour" do
      expect(litres(5)).to eq (5*0.5).floor
    end
  end
  
  it "returns rounded value(integer)" do
    cycling_time = 5 #in hours
    expect(litres(cycling_time)).to be_an_instance_of Integer
  end
end