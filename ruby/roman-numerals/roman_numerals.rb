class Integer
  def to_roman
    num = self.to_i
    d = {
      'M' => 1000, 'CM' => 900, 'D' => 500,
      'CD' => 400, 'C' => 100, 'XC' => 90,
      'L' => 50, 'XL' => 40, 'X' => 10,
      'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1
    }
    d.keys.reduce('') { |roman, i|
      while num >= d[i]
        num -= d[i]
        roman += i
      end
      roman
    }
  end
end

module BookKeeping
  VERSION = 2
end
