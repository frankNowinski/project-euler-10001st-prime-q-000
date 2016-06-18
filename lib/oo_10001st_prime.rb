class Prime
  attr_reader :number

  def initialize(input)
    @input = input
    prime_number_for
  end

  def prime_number_for
    count = 0
    @number = 1

    until count == @input
      @number += 1
      count += 1 if is_prime?(number)
    end
    @number
  end

  def is_prime?(number)
    (2..Math.sqrt(number).to_i).none?{ |i| number % i == 0 }
  end
end
