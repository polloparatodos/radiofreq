module Radiofreq
  class Freq
    def self.portray(freq, unit)
      case unit
        when 'Hz'
          case freq
            when -Float::INFINITY..3
              "Tremendously Low Frequency (TLF)"
            when 3..30
              "Extremely Low Frequency (ELF)"
            when 30.001..300
              "Super Low Frequency (SLF)"
            when 300.001..3000
              "Ultra Low Frequency (ULF)"
            else
              "Invalid frequency provided: #{freq.to_s + unit}"
            end
        when 'kHz'
          case freq
            when 3..30
              "Very Low Frequency VLF)"
            when 30.001..300
              "Low Frequency (LF)"
            when 300.001..3000
              "Medium Frequency (MF)"
            else
              "Invalid frequency provided: #{freq.to_s + unit}"
            end
        when 'MHz'
          case freq
            when 3..30
              "High Frequency (HF)"
            when 30.001..300
              "Very High Frequency (VHF)"
            when 300.001..3000
              "Ultra High Frequency (UHF)"
            else
              "Invalid frequency provided: #{freq.to_s + unit}"
            end
        when 'GHz'
          case freq
            when 3..30
              "Super High Frequency (SHF)"
            when 30.001..300
              "Extremely High Frequency (EHF)"
            when 300.001..3000
              "Tremendously High Frequency (THF)"
            else
              "Invalid frequency provided: #{freq.to_s + unit}"
            end
        else
          "Invalid frequency unit: #{unit}"
      end
    end
  end
end
