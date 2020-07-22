require 'radiofreq'

describe Radiofreq::Freq do
  context "Positive Tests" do
    it "Confirm filtered frequencies can be returned" do
      expect(Radiofreq::Freq::get_frequency_range(397.062)).to be
    end
  end

  context "Negative Tests" do
    it "Confirm frequency is required" do
      expect(Radiofreq::Freq::get_frequency_range('lol')).to be_empty
    end
  end
end
