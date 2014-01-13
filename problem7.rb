=begin

By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?

=end

prime_counter = 0

primes = [2]

x = 2

until prime_counter == 10001
  #puts prime_counter
  #puts x

  #Maybe exclude even numbers
  #next if x % 2 == 0

  #Skip if factor isn't a prime
  skip = 0
  primes.each do |f|
    if x % f == 0
      skip = 1
      break
    end
  end

  #Add primes to array
  primes << x if skip == 0 

  prime_counter = primes.length
  x += 1
end

puts "10,001 Prime is #{x-1}"