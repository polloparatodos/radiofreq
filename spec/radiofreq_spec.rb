require 'radiofreq'

describe Radiofreq::Freq do
  it "Tremendously Low Frequency (TLF)" do
    expect(Radiofreq::Freq.portray(0.003, 'Hz')).to include("TLF")
  end

  it "Very High Frequency (VHF)" do
    expect(Radiofreq::Freq.portray(146.520, 'MHz')).to include("VHF")
  end

  it "Ultra High Frequency (UHV)" do
    expect(Radiofreq::Freq.portray(446.000, 'MHz')).to include("UHF")
  end
  
  it "Out of bounds" do
    expect(Radiofreq::Freq.portray(3001, 'GHz')).to start_with("Invalid frequency provided:")
  end

  it "Invalid Frequency" do
    expect(Radiofreq::Freq.portray(3, 'Invalid')).to start_with("Invalid frequency unit:")
  end
end
