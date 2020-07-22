module Radiofreq
  # Convert given frequency to frequency descriptive unit
  # Example: 446.000MHz would return: Ultra High Frequency (UHF)
  class Freq
    def self.frequencies
      {
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
    end
    def self.portray(freq, unit)
      frequency_range = get_frequency_range(freq)
      if frequency_range.empty?
        return "Invalid frequency provided: #{freq}"
      else
        return get_descriptive_unit(frequency_range,unit)
      end
    end
    def self.get_frequency_range(freq)
      filtered_frequencies = frequencies.select{|freq_range,_|freq_range === freq}
      if filtered_frequencies
        return filtered_frequencies
      else
        return "Invalid frequency provided: #{freq}"
      end
    end
    def self.get_descriptive_unit(range,unit)
      range.each do|key,value|
        found_unit = value[unit]
        if found_unit
          return found_unit
        else
          return "Invalid frequency unit: #{unit}"
        end
      end
    end
  end
end
