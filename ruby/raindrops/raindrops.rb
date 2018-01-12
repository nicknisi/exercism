def get_factors(num)
  factors = []
  i = 1
  while i <= Math.sqrt(num).floor
    if num % i == 0
      factors.push(i)
      if num / i != i
        factors.push(num / i)
      end
    end
    i += 1
  end
  factors
end

class Raindrops
  def self.convert(num)
    found_others = false
    factors = get_factors(num)
    str = factors.map { |factor|
      case factor
      when 3
        'Pling'
      when 5
        'Plang'
      when 7
        'Plong'
      else
        found_others = true
      end
    }.join('')
    found_others ? factors.join('') : str
  end
end
