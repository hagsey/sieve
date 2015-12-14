require 'Pry'

class Sieve
  attr_accessor :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    range = (2..limit).to_a
    prime_nums = []
    
    while range.size > 0
      prime = range.first
      prime_nums << prime
      range.delete_if { |num| num % prime == 0 }
    end
    prime_nums
  end
end