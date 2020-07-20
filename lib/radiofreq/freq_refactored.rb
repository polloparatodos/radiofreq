module Radiofreq
  class Freq
    def self.portray(freq, unit)
      frequencies = {
        -Float::INFINITY..3 => {
          'Hz' => 'Tremendously Low Frequency (TLF)'
        },
        3..30 => {
          'Hz' => 'Extremely Low Frequency (ELF)',
          'kHz' => 'Very Low Frequency (VLF)',
          'MHz' => 'High Frequency (HF)',
          'GHz' => 'Super High Frequency (SHF)'
        },
        30.001..300 => {
          'Hz' => 'Super Low Frequency (SLF)',
          'kHz' => 'Low Frequency (LF)',
          'MHz' => 'Very High Frequency (VHF)',
          'GHz' => 'Extremely High Frequency (EHF)'
        },
        300.001..3000 => {
          'Hz' => 'Ultra Low Frequency (ULF)',
          'kHz' => 'Medium Frequency (MF)',
          'MHz' => 'Ultra High Frequency (UHF)',
          'GHz' => 'Tremendously High Frequency'
        }
      }
      frequencies.each do|ranges,units|
        if ranges === freq
          units.each do|units,description|
            if units === unit
              puts description
            end
          end
        else
          "Invalid frequency unit: #{unit}"
        end
      end
    end
  end
end