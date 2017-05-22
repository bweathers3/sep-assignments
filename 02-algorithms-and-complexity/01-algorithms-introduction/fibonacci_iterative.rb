

def fib(n)
   fib_no_0, fib_no_1 = 0, 1
   return n if n == 0 || n == 1

   for n in 1..n-1 do
     hold, fib_no_0 = fib_no_0, fib_no_1
     fib_no_1 = fib_no_1 + hold
   end
   return fib_no_1
end


for n in (0..9) do
  puts "The Fibonacci Iterative for #{n} is:      #{fib(n)}"
end

puts
puts

for n in (0..100).step(3)
  puts "The Fibonacci Iterative for #{n} is:      #{fib(n)}"
end
