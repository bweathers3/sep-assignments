

def fib(n)
  @count += 1
   if n == 0 || n == 1
     return n
   else
     return fib(n-1) + fib(n-2)
   end
 end


@count = 0

n = 20

puts "The Fibonacci Recursive for #{n} is:      #{fib(n)}"

puts "The Fibonacci Recursive count is:   #{@count}"
