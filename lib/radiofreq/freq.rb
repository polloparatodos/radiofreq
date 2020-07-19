module Radiofreq
  class Freq
    def self.portray(freq)
      if freq.between?(30,300)
        "VHF"
      elsif freq.between?(300,3000)
        "UHF"
      end
    end
  end
end
