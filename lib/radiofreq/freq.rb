module Radiofreq
  class Freq
    def self.portray(freq:Float)
      if freq.between?(30,300)
        "VHF"
      elsif freq.between(300,3000)
        "UHF"
      end
    end
  end
end
