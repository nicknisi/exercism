class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).reduce(0) { |sum, num| sum + num } ** 2
  end

  def sum_of_squares
    (1..@num).reduce(0) { |sum, num| sum + num ** 2 }
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
