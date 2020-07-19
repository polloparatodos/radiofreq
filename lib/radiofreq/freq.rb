module Radiofreq
  class Freq
    def self.portray(freq)
      if freq == 146.520
        "VHF"
      elsif freq == 446.000
        "UHF"
      end
      #if freq.between?(30,300)
      #  "VHF"
      #elsif freq.between(300,3000)
      #  "UHF"
      #end
    end
  end
end
