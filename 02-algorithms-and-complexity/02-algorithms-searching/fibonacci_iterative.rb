

def fib(n)
  @count += 1
   fib_no_0, fib_no_1 = 0, 1
   return n if n == 0 || n == 1

   for n in 1..n-1 do
     hold, fib_no_0 = fib_no_0, fib_no_1
     fib_no_1 = fib_no_1 + hold
     @count += 1
   end
   return fib_no_1
end

@count = 0

n = 20

puts "The Fibonacci Iterative for #{n} is:      #{fib(n)}"

puts "The Fibonacci Iterative count is:   #{@count}"
