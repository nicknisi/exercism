def get_factors(num)
  factors = []
  i = 1
  while i <= num.floor
    if num % i == 0
      factors.push(num / i)
    end
    i += 1
  end
  factors
end

class Raindrops
  def self.convert(num)
    factors = get_factors(num)
    str = ''
    factors.reverse.each do |factor|
      case factor
      when 3
        str += 'Pling'
      when 5
        str += 'Plang'
      when 7
        str += 'Plong'
      end
    end
    str.length != 0 ? str : num.to_s
  end
end

module BookKeeping
  VERSION = 3
end
