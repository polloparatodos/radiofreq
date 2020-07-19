require 'radiofreq'

describe Radiofreq::Freq do
  it "Very High Frequency (VHF)" do
    expect(Radiofreq.Freq.portray(146.520)).to eql("VHF")
  end

  it "Ultra High Frequency (UHV)" do
    expect(Radiofreq.Freq.portray(446.000)).to eql("UHF")
  end
end

