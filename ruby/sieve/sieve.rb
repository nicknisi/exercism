class Sieve
  def initialize(max)
    @max = max
  end

  def primes
    primes = (0..@max).to_a
    primes[0] = primes[1] = nil
    primes.each do |p|
      next unless p
      break if p ** 2 > @max
      (p ** 2).step(@max, p) { |m| primes[m] = nil }
    end
    primes.select { |p| p }
  end
end

module BookKeeping
  VERSION = 1
end
