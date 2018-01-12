module BookKeeping
  VERSION = 3
end

class Hamming
  def self.compute(a, b)
    if a.length != b.length
      raise ArgumentError.new("Strings are not the same length")
    end
    a.split('').zip(b.split('')).count { | x, y | x != y }
  end
end
