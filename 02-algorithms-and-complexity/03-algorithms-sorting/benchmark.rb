require 'benchmark'

require_relative 'bubble_sort'
require_relative 'bucket_sort'
#require_relative 'heap_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'quick_sort'
require_relative 'selection_sort'

  test_array = []

  for i in 1..50 do
    ascii_code = rand(255)
    test_array << ascii_code.chr + " test"
  end

  puts
  puts
  
  Benchmark.bm(38) do |bubble_sort|
    bubble_sort.report("Testing a Bubble Sort") do
      bubble_sort(test_array)
    end
  end

  Benchmark.bm(38) do |bucket_sort|
    bucket_sort.report("Testing a Bucket Sort") do
      bucket_sort(test_array)
    end
  end

  Benchmark.bm(38) do |insertion_sort|
    insertion_sort.report("Testing a Insertion Sort") do
      insertion_sort(test_array)
    end
  end

  Benchmark.bm(38) do |merge_sort|
    merge_sort.report("Testing a Merge Sort") do
      merge_sort(test_array)
    end
  end

  Benchmark.bm(38) do |quick_sort|
    quick_sort.report("Testing a Quick Sort") do
      quick_sort(test_array)
    end
  end

  Benchmark.bm(38) do |selection_sort|
    selection_sort.report("Testing a Selection Sort") do
      selection_sort(test_array)
    end
  end

  puts
  puts
