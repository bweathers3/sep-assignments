require 'benchmark'

require_relative 'bubble_sort'
require_relative 'bucket_sort'
require_relative 'bucket_sort_multi_case'
require_relative 'heap_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'

  test_array = []

  for i in 1..50 do
    ascii_code1 = rand(255)
    ascii_code2 = rand(255)
    ascii_code3 = rand(255)
    test_array << ascii_code1.chr + ascii_code2.chr + ascii_code3.chr
  end

  puts
  puts

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort w. insertion sort") do
      bucket_sort(sort_array, 1)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort w. Bubble sort") do
      bucket_sort(sort_array, 2)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort w. Heap sort") do
      bucket_sort(sort_array, 3)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort w. merge sort") do
      bucket_sort(sort_array, 4)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    sort_array = test_array
    bucket_sort.report("Testing a Bucket Sort w. quick sort") do
      bucket_sort(sort_array, 5)
    end
  end

  puts
  puts
