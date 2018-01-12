class Complement
  def self.of_dna(strand)
    rna = {
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    dna = strand.split('').map { |a| rna.fetch(a) { '' } }.join('')
    dna.length == strand.length ? dna : ''
  end
end

module BookKeeping
  VERSION = 4
end
