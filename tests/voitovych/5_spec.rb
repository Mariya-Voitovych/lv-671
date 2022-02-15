require 'rspec'
require '/home/mariya/Documents/SoftServe/tests_for_katas/5Which x for that sum'

describe "solve" do
  context "when argument is close to zero" do
    it { expect((solve(0.02)-0.01923788646683855).abs).to be < 1e-12 }
  end
  
  context "when argument is close to infinity" do
    it { expect((solve(1000000)-0.999000499875).abs).to be < 1e-12 }
  end 
end