require 'radiofreq'
describe Radiofreq::Freq do
  it "Very High Frequency (VHF)" do
    expect(Radiofreq.Freq.portray("146.520MHz")).to eql("VHF")
  end

  it "Ultra High Frequency (UHV)" do
    expect(Radiofreq.Freq.portray("446.000MHz")).to eql("UHF")
  end
end

