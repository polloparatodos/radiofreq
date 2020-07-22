require 'radiofreq'

describe Radiofreq::Freq do
  # This function isn't currently designed to be called directly, but should I recommend it should be
  context "Negative Tests" do
    it "Confirm frequency is required" do
      expect(Radiofreq::Freq::get_frequency_range('lol')).to be_empty
    end
  end
end
