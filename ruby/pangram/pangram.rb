class Pangram
  def self.pangram?(string)
    string.downcase.gsub(/[\W_0-9]/, '').split('').uniq.join('').length == 26
  end
end

module BookKeeping
  VERSION = 6
end
