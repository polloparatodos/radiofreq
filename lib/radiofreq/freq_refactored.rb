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
      filtered_freqs = frequencies.select{|freq_range,unit_map|freq_range === freq}
      if filtered_freqs.empty?
        return "Invalid frequency provided: #{freq}"
      else
        filtered_freqs.each do|key,value|
          if value[unit].nil?
            return "Invalid frequency unit: #{unit}"
          else
            return value[unit]
          end
        end
      end
    end
  end
end
