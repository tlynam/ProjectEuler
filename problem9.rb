=begin

Problem 9
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which

a^2 + b^2 = c^2
3^2 + 4^2 = 5^2
9 + 16 = 25
9 + 16 + 25 = 50
a + b + c = 1000

For example, 3^2 + 4^2 = 25 = 5^2.


There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

(a*a + b*b == c*c && (a + b + c) == 1000)

=end

a = 1
b = 1
c = 1

q = false
t = false

for x in 100..500
  for y in x..500
    for z in y..700
      #puts "#{a} #{b} #{c}"
      q = true if a*a + b*b == c*c
      t = true if a + b + c == 1000
      if q == true then
        if t == true then
          puts "#{a} #{b} #{c}"
        end
      end
      a = x
      b = y
      c = z
      q = false
      t = false
    end
  end
end
