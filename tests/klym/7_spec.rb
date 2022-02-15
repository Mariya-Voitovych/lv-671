require 'C:\all\new_project\lv-671\katas\klym\7_klym.rb'

describe ".sequence_sum(begin_number, end_number, step)" do
  context 'begin_number bigger than end_number' do
    it "should return 0" do
      begin_num = 5
      end_num = 3
      step = 1
      expect(sequence_sum(begin_num, end_num, step)).to eq (0)
    end
  end

  context 'when passed valid input' do  
    it "returns the sum of sequence of integers" do
      begin_num = 1
      end_num = 8
      step = 2
      expect(sequence_sum(begin_num, end_num, step)).to eq (16)
    end
  end
end