require 'radiofreq'

describe Radiofreq::Freq do
  context "Positive Tests" do
    it "Is a populated hash" do
      expect(Radiofreq::Freq::frequencies).not_to be_empty
    end
  end
end