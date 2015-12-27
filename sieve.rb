# sieve.rb

class Sieve
  attr_accessor :number
  def initialize(n)
    @number = n
  end

  def primes
    full_array = (2...number).to_a
    first_multiple = 2

    while first_multiple < number / 2
      second_multiple = 2
      while second_multiple < number / second_multiple
        if full_array.include?(first_multiple * second_multiple)
          full_array.delete(first_multiple * second_multiple)
        end
        second_multiple += 1
      end
      first_multiple += 1
    end
    full_array
  end
end
