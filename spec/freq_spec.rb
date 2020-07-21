require 'radiofreq'

describe Radiofreq::Freq do
  context "Positive Tests" do
    it "Tremendously Low Frequency (TLF)" do
      # Values below 3Hz are TLF
      expect(Radiofreq::Freq.portray(0.003, 'Hz')).to include("TLF")
    end

    it "Very High Frequency (VHF)" do
      # Values between 30.001..300 are VHF
      expect(Radiofreq::Freq.portray(146.520, 'MHz')).to include("VHF")
    end

    it "Ultra High Frequency (UHV)" do
      # Values between 300.001..3000 are UHF
      expect(Radiofreq::Freq.portray(446.000, 'MHz')).to include("UHF")
    end
  end

  context "Negative Tests" do
    it "Validate frequency" do
      # Values above 3000 GHz (3THz) are non-existent, according to the ITU
      # https://en.wikipedia.org/wiki/Terahertz_radiation
      expect(Radiofreq::Freq.portray(3001, 'GHz')).to start_with("Invalid frequency provided:")
      # Reverse the frequency and unit
      # Frequency is checked first, so we should fail before we get to traversing into the range object
      expect(Radiofreq::Freq.portray('GHz', '3001')).to start_with("Invalid frequency provided:")
    end

    it "Invalid Frequency" do
      # Valid options would be Hz, kHz, MHz, GHz
      # THz could be a good addition
      expect(Radiofreq::Freq.portray(3, 'Invalid')).to start_with("Invalid frequency unit:")
    end
  end
end
