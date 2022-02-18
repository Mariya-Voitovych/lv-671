RSpec.describe "check_exam" do
  it "should calculate exam points" do
    expect(check_exam(["a", "a", "b", "b"], ["a", "c", "b", "d"])).to eq 6
    expect(check_exam(["b", "c", "b", "a"], ["",  "a", "a", "c"])).to eq 0
    expect(check_exam(["a", "a", "b", "b"], ["a", "", "", ""])).to eq 4 
    expect(check_exam(["a", "a", "b", "b", "c"], ["a", "a", "c", "c", "c"])).to eq 10
  end
end