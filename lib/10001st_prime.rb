def prime_number_for(input)
  count = 0
  number = 1

  until count == input
    number += 1
    count += 1 if is_prime?(number)
  end
  number
end

def is_prime?(digit)
  (2..Math.sqrt(digit).to_i).none?{ |i| digit % i == 0 }
end
