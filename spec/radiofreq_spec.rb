require 'radiofreq'

describe Radiofreq::Freq do
  it "Very High Frequency (VHF)" do
    expect(Radiofreq::Freq.portray(146.520, 'MHz')).to include("VHF")
  end

  it "Ultra High Frequency (UHV)" do
    expect(Radiofreq::Freq.portray(446.000, 'MHz')).to include("UHF")
  end
end
